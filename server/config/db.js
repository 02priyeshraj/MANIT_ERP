const { Pool } = require('pg');

// PostgreSQL connection configuration
const pool = new Pool({
  host: '10.3.1.15',
  port: 5432,
  user: 'erp',
  password: 'iiterp',
  database: 'smiledb1',
});

// Connect to PostgreSQL
pool.connect()
  .then(() => console.log('Connected to PostgreSQL'))
  .catch(err => console.error('Connection error', err.stack));

//export
module.exports = pool;