const express = require('express');
const router = express.Router();
const {allTeachers, oneTeacher, addTeacher} = require('../db/queries/teacherQueries.js');

router.get('/', allTeachers);
router.get('/:id', oneTeacher);
router.post('/', addTeacher);


module.exports = router;
