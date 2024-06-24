const express = require('express');
const {getAllProgramEnrollmentVersions } = require('../controllers/registration_data_controller');

const router = express.Router();

router.get('/program-enrollment-versions/:studentuid', getAllProgramEnrollmentVersions);

module.exports = router;