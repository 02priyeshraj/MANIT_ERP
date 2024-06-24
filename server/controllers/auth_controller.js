const ldap = require('ldapjs');
const jwt = require('jsonwebtoken');
require("dotenv").config();

const ldapconfig = {
    url: process.env.LDAP_URL,
    basedn: process.env.LDAP_BASEDN,
    cn: process.env.LDAP_CN,
    cn_password: process.env.LDAP_CN_PASSWORD
};

exports.login = (req, res) => {
    const { username, password } = req.body;

    if (!username || !password) {
        return res.status(400).json({ error: 'Username and password are required' });
    }

    const client = ldap.createClient({
        url: ldapconfig.url
    });

    client.bind(`${ldapconfig.cn},${ldapconfig.basedn}`, ldapconfig.cn_password, (err) => {
        if (err) {
            console.error('LDAP bind failed:', err);
            return res.status(500).json({ error: 'LDAP bind failed', details: err });
        }

        const opts = {
            filter: `(uid=${username})`,
            scope: 'sub',
            attributes: ['dn']
        };

        client.search(ldapconfig.basedn, opts, (err, search) => {
            if (err) {
                console.error('LDAP search failed:', err);
                return res.status(500).json({ error: 'LDAP search failed', details: err });
            }

            let userDN = null;

            search.on('searchEntry', (entry) => {
                userDN = entry.object.dn;
                console.log('User DN found:', userDN);
            });

            search.on('end', (result) => {
                if (userDN === null) {
                    console.error('User not found');
                    return res.status(401).json({ error: 'User not found' });
                }

                client.bind(userDN, password, (err) => {
                    if (err) {
                        console.error('Authentication failed:', err);
                        return res.status(401).json({ error: 'Authentication failed', details: err });
                    }

                    const token = jwt.sign({ username }, process.env.JWT_SECRET, {
                        expiresIn: '1h'
                    });

                    const userOpts = {
                        filter: `(uid=${username})`,
                        scope: 'sub',
                        attributes: ['*']
                    };

                    client.search(ldapconfig.basedn, userOpts, (err, search) => {
                        if (err) {
                            console.error('LDAP user info search failed:', err);
                            return res.status(500).json({ error: 'LDAP user info search failed', details: err });
                        }

                        let userInfo = {};

                        search.on('searchEntry', (entry) => {
                            console.log('User info entry:', entry.object);
                            userInfo = entry.object;
                        });

                        search.on('end', () => {
                            const groupOpts = {
                                base: 'ou=group,dc=manit,dc=ac,dc=in',
                                filter: `(memberuid=${username})`,
                                scope: 'sub',
                                attributes: ['cn']
                            };

                            client.search(groupOpts.base, groupOpts, (err, groupSearch) => {
                                if (err) {
                                    console.error('LDAP group search failed:', err);
                                    return res.status(500).json({ error: 'LDAP group search failed', details: err });
                                }

                                const groups = [];

                                groupSearch.on('searchEntry', (groupEntry) => {
                                    console.log('Group entry:', groupEntry.object);
                                    groups.push(groupEntry.object.cn);
                                });

                                groupSearch.on('end', () => {
                                    client.unbind();
                                    userInfo.groups = groups;
                                    console.log('User info with groups:', userInfo);
                                    return res.json({ token, userInfo });
                                });

                                groupSearch.on('error', (searchErr) => {
                                    console.error('LDAP group search error:', searchErr);
                                    client.unbind();
                                    return res.status(500).json({ error: 'LDAP group search error', details: searchErr });
                                });
                            });
                        });

                        search.on('error', (searchErr) => {
                            console.error('LDAP user info search error:', searchErr);
                            client.unbind();
                            return res.status(500).json({ error: 'LDAP user info search error', details: searchErr });
                        });
                    });
                });
            });

            search.on('error', (searchErr) => {
                console.error('LDAP search error:', searchErr);
                client.unbind();
                return res.status(500).json({ error: 'LDAP search error', details: searchErr });
            });
        });
    });
};
