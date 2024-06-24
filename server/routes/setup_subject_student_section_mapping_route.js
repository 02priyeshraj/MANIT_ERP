const express = require('express');
const {getAllRegistrations} = require('../controllers/setup_subject_student_section_mapping_controller');

const router = express.Router();

router.get('/student-registrations/:studentuid', getAllRegistrations);

module.exports = router;