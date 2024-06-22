const SubjectMaster = require('../models/SubjectMaster');

// Get all subjects
exports.getAllSubjects = async (req, res) => {
  try {
    const subjects = await SubjectMaster.findAll();
    res.json(subjects);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};
