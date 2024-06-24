const express = require('express');
const { checkFeesStatus } = require('../controllers/sem_reg_fees_controller');

const router = express.Router();

router.get('/check-fees-status/:session/:semesterTypeIdCode', checkFeesStatus);

module.exports = router;