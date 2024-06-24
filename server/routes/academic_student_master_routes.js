const express = require('express');
const router = express.Router();
const studentController = require('../controllers/academic_student_master_controllers');

router.get('/students/:studentuid', studentController.getStudent);
router.put('/students/:institute_id/:studentuid', studentController.updateStudent);


module.exports = router;