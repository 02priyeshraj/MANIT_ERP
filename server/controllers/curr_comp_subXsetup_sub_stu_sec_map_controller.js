const pool = require('../config/db');

const getCurrCompSubjectsWithStudentSectionMapping = async (req, res) => {
  const { subject_master_id } = req.params;

  try {
    const query = `
      SELECT ccs., ssssm.
      FROM academic.curr_comp_subjects ccs
      INNER JOIN academic.setup_subject_student_section_mapping ssssm
      ON ccs.subject_master_id = ssssm.subject_master_id
      WHERE ccs.subject_master_id = $1
    `;
    const values = [subject_master_id];
    const result = await pool.query(query, values);
    res.status(200).json(result.rows);
  } catch (error) {
    console.error('Error fetching data:', error);
    res.status(500).json({ error: 'Internal Server Error' });
  }
};

module.exports = {
  getCurrCompSubjectsWithStudentSectionMapping,
};