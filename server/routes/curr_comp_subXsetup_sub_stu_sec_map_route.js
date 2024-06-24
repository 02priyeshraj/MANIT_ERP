const express = require('express');
const { getCurrCompSubjectsWithStudentSectionMapping } = require('../controllers/curr_comp_subXsetup_sub_stu_sec_map_controller');

const router = express.Router();

router.get('/curr-comp-subjects/:subject_master_id', getCurrCompSubjectsWithStudentSectionMapping);

module.exports = router;