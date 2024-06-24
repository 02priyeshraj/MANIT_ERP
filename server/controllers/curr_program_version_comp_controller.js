const pool = require('../config/db');

const getProgramVersionComponents = async (req, res) => {
    const { studentuid } = req.params;
    try {
      const query = `
        SELECT c.*
        FROM academic.curr_program_ver_comp c
        JOIN academic.student_program_enrollment_versions sp
        ON c.institute_id = sp.institute_id
        AND c.program_master_id = sp.program_master_id
        AND c.version = sp.version
        AND c.semester_term_no_id_code = sp.semester_term_no_id_code
        WHERE sp.studentuid = $1
      `;
  
      const result = await pool.query(query, [studentuid]);
      if (result.rows.length === 0) {
        return res.status(404).json({ error: 'No program version components found for the student' });
      }
      res.status(200).json(result.rows);
    } catch (error) {
      console.error('Error fetching program version components:', error);
      res.status(500).json({ error: 'Internal Server Error' });
    }
  };
  
  module.exports = {
    getProgramVersionComponents,
  };