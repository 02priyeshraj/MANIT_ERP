const express = require('express');
const { getAllProgramVersions } = require('../controllers/curr_program_version_contoller');

const router = express.Router();

router.get('/program-versions', getAllProgramVersions);

module.exports = router;