const express = require('express');
const { getRegistrationSession } = require('../controllers/sem_reg_enrollment_version_controller');

const router = express.Router();

router.get('/registration-session/:studentuid', getRegistrationSession);

module.exports = router;