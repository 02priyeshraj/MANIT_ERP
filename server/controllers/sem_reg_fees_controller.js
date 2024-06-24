const pool = require('../config/db');

const checkFeesStatus = async (req, res) => {
    const { session, semesterTypeIdCode } = req.params;
    try {
      const query = `
        SELECT studentuid
        FROM academic.sem_registration_fees
        WHERE session = $1
          AND reg_semester_type_id_code = $2
          AND fees_status IN ('D', 'P');
      `;
  
      const result = await pool.query(query, [session, semesterTypeIdCode]);
      if (result.rows.length === 0) {
        return res.status(404).json({ error: 'No fee status found for the given session and semester type ID code' });
      }
      res.status(200).json(result.rows);
    } catch (error) {
      console.error('Error checking fees status:', error);
      res.status(500).json({ error: 'Internal Server Error' });
    }
  };
  
  module.exports = {
    checkFeesStatus,
  };