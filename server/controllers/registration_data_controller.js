const pool = require('../config/db');
const getAllProgramEnrollmentVersions = async (req, res) => {
    const { studentuid } = req.params;
    try {
      const query = `
        SELECT * 
        FROM academic.student_program_enrollment_versions
        WHERE studentuid = $1
      `;
  
      const result = await pool.query(query, [studentuid]);
      if (result.rows.length === 0) {
        return res.status(404).json({ error: 'No program enrollment versions found for the student' });
      }
      res.status(200).json(result.rows);
    } catch (error) {
      console.error('Error fetching program enrollment versions:', error);
      res.status(500).json({ error: 'Internal Server Error' });
    }
  };
  
  module.exports = {
    getAllProgramEnrollmentVersions,
  };