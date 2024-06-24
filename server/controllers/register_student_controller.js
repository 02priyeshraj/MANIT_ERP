const pool = require('../config/db');

const registerStudent = async (req, res) => {
  const client = await pool.connect();
  const { studentuid, session, semesterTypeIdCode, sectionIdCode, registrationData } = req.body;

  try {
    await client.query('BEGIN');

    // Insert into academic.sem_registration
    const insertSemRegistrationQuery = `
      INSERT INTO academic.sem_registration (institute_id, studentuid, reg_session, reg_semester_type_id_code, current_status, created_by, creation_time)
      VALUES ($1, $2, $3, $4, $5, $6, NOW())
      RETURNING *
    `;
    const semRegistrationValues = [1, studentuid, session, semesterTypeIdCode, 'registered', 1];
    await client.query(insertSemRegistrationQuery, semRegistrationValues);

    // Insert into academic.sem_reg_subject_comp_mapping
    const insertSemRegSubjectCompMappingQuery = `
      INSERT INTO academic.sem_reg_subject_comp_mapping (institute_id, studentuid, reg_session, reg_semester_type_id_code, subject_master_id, comp_name_sl_no, created_by, creation_time)
      VALUES ($1, $2, $3, $4, $5, $6, $7, NOW())
    `;
    for (const compMapping of registrationData.compMappings) {
      const compMappingValues = [1, studentuid, session, semesterTypeIdCode, compMapping.subjectMasterId, compMapping.compNameSlNo, 1];
      await client.query(insertSemRegSubjectCompMappingQuery, compMappingValues);
    }

    // Insert into academic.sem_reg_subject_section
    const insertSemRegSubjectSectionQuery = `
      INSERT INTO academic.sem_reg_subject_section (institute_id, studentuid, reg_session, reg_semester_type_id_code, subject_master_id, section_id_code, created_by, creation_time)
      VALUES ($1, $2, $3, $4, $5, $6, $7, NOW())
    `;
    for (const subjectSection of registrationData.subjectSections) {
      const subjectSectionValues = [1, studentuid, session, semesterTypeIdCode, subjectSection.subjectMasterId, sectionIdCode, 1];
      await client.query(insertSemRegSubjectSectionQuery, subjectSectionValues);
    }

    // Insert into academic.sem_reg_subject_grade
    const insertSemRegSubjectGradeQuery = `
      INSERT INTO academic.sem_reg_subject_grade (institute_id, studentuid, reg_session, reg_semester_type_id_code, subject_master_id, grade, created_by, creation_time)
      VALUES ($1, $2, $3, $4, $5, $6, $7, NOW())
    `;
    for (const subjectGrade of registrationData.subjectGrades) {
      const subjectGradeValues = [1, studentuid, session, semesterTypeIdCode, subjectGrade.subjectMasterId, subjectGrade.grade, 1];
      await client.query(insertSemRegSubjectGradeQuery, subjectGradeValues);
    }

    // Update academic.student_program_enrollment_versions
    const updateStudentProgramEnrollmentVersionsQuery = `
      UPDATE academic.student_program_enrollment_versions
      SET semester_reg_completion_status = $1, modified_by = $2, modification_time = NOW()
      WHERE institute_id = $3 AND studentuid = $4 AND semester_reg_session = $5 AND semester_term_no_id_code = $6
    `;
    const enrollmentUpdateValues = ['completed', 1, 1, studentuid, session, semesterTypeIdCode];
    await client.query(updateStudentProgramEnrollmentVersionsQuery, enrollmentUpdateValues);

    await client.query('COMMIT');
    res.status(200).json({ message: 'Student registration successful' });
  } catch (error) {
    await client.query('ROLLBACK');
    console.error('Error registering student:', error);
    res.status(500).json({ error: 'Internal Server Error' });
  } finally {
    client.release();
  }
};

module.exports = {
  registerStudent,
};