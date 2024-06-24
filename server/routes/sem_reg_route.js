const express = require('express');
const { getClearedStudents } = require('../controllers/sem_reg_controller');

const router = express.Router();

router.get('/cleared-students', getClearedStudents);

module.exports = router;