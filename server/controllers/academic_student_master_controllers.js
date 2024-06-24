const studentModel = require('../models/academic_student_master_models');

const getStudent = async (req, res) => {
  const { studentuid } = req.params;
  try {
      const student = await studentModel.getStudentById(studentuid);
      res.status(200).json(student);
  } catch (error) {
      res.status(404).json({ message: error.message });
  }
};

const updateStudent = async (req, res) => {
  try {
    const { institute_id, studentuid } = req.params;
    const student = await studentModel.updateStudent(institute_id, studentuid, req.body);
    res.status(200).json(student);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};



module.exports = {
  
  getStudent,
  updateStudent,
  
};