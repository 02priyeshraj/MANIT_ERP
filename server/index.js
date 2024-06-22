const { Client } = require('pg');

// PostgreSQL connection configuration
const client = new Client({
  host: '',
  port: 5432,
  user: '',
  password: '',
  database: '',
});

// Connect to PostgreSQL
client.connect()
  .then(() => console.log('Connected to PostgreSQL'))
  .catch(err => console.error('Connection error', err.stack));


