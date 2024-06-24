const pool = require('../config/db');
const checkRegistrationAllowed = async (req, res) => {
    try {
      const query = `
        SELECT session, semester_term_type_id_code
        FROM common.calendar
        WHERE schedule_type = 'registration'
          AND start_date <= NOW()
          AND end_date >= NOW();
      `;
  
      const result = await pool.query(query);
      if (result.rows.length === 0) {
        return res.status(200).json({ registrationAllowed: false });
      }
      res.status(200).json({
        registrationAllowed: true,
        sessions: result.rows.map(row => ({
          session: row.session,
          semesterTermTypeIdCode: row.semester_term_type_id_code,
        })),
      });
    } catch (error) {
      console.error('Error checking registration allowance:', error);
      res.status(500).json({ error: 'Internal Server Error' });
    }
  };
  
  module.exports = {
    checkRegistrationAllowed,
  };