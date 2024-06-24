const pool = require('../config/db');
const getAllRegistrations = async (req, res) => {
    const { studentuid } = req.params;
    try {
      const query = `
        SELECT * 
        FROM academic.setup_subject_student_section_mapping
        WHERE studentuid = $1
      `;
  
      const result = await pool.query(query, [studentuid]);
      if (result.rows.length === 0) {
        return res.status(404).json({ error: 'No registrations found for the student' });
      }
      res.status(200).json(result.rows);
    } catch (error) {
      console.error('Error fetching student registrations:', error);
      res.status(500).json({ error: 'Internal Server Error' });
    }
  };

module.exports = {getAllRegistrations};