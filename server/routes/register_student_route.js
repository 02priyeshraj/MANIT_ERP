const express = require('express');
const { registerStudent } = require('../controllers/register_student_controller');

const router = express.Router();

router.post('/register-student', registerStudent);

module.exports = router;