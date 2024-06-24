const pool = require('../config/db');

const getClearedStudents = async (req, res) => {
  try {
    const query = `
      SELECT studentuid
      FROM academic.sem_registration
      WHERE reg_session IN (1, 2) AND current_status = 'cleared'
      GROUP BY studentuid
      HAVING COUNT(DISTINCT reg_session) = 2;
    `;

    const result = await pool.query(query);
    res.status(200).json(result.rows);
  } catch (error) {
    console.error('Error fetching students:', error);
    res.status(500).json({ error: 'Internal Server Error' });
  }
};

module.exports = {
  getClearedStudents,
};