const db = require('../config/db');




const getStudentById = async (studentuid) => {
  const query = `
    SELECT studentuid, full_name, dob, entry_course, aadhar_no, gender, phone_number, caste_code, father_name, mother_name
    FROM academic.studentmas
    WHERE studentuid = $1
  `;

  try {
    const res = await db.query(query, [studentuid]);
    if (res.rows.length === 0) {
      throw new Error('Student not found');
    }
    return res.rows[0];
  } catch (error) {
    console.error('Error fetching student:', error);
    throw new Error('Student not found');
  }
};
  
const updateStudent = async (institute_id, studentuid, student) => {
    const fields = Object.keys(student).map((key, idx) => `${key} = $${idx + 3}`).join(', ');
    const values = [institute_id, studentuid, ...Object.values(student)];
    const query = `UPDATE academic.studentmas SET ${fields} WHERE institute_id = $1 AND studentuid = $2 RETURNING *`;
    const res = await db.query(query, values);
    return res.rows[0];
};
  

  
module.exports = {
    updateStudent,
    getStudentById
};