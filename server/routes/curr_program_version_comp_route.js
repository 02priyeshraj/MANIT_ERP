const express = require('express');
const {getProgramVersionComponents} = require('../controllers/curr_program_version_comp_controller');

const router = express.Router();
router.get('/program-version-components/:studentuid', getProgramVersionComponents);

module.exports = router;