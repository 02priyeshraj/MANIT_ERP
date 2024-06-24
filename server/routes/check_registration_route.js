const express = require('express');
const {checkRegistrationAllowed } = require('../controllers/check_registration_controller');

const router = express.Router();

router.get('/check-registration-allowed', checkRegistrationAllowed);

module.exports = router;