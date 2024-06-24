const pool = require('../config/db');

const getAllProgramVersions = async (req, res) => {
    try {
      const query = 'SELECT * FROM academic.curr_program_versions';
      const result = await pool.query(query);
      res.status(200).json(result.rows);
    } catch (error) {
      console.error('Error fetching program versions:', error);
      res.status(500).json({ error: 'Internal Server Error' });
    }
  };
  
  module.exports = {
    getAllProgramVersions,
  };