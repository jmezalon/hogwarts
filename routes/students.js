const express = require('express');
const router = express.Router();
const {allStudent, oneStudent, addSingleStudent} = require('../db/queries/studentQueries.js');

router.get('/', allStudent);

router.get('/:id', oneStudent);

router.post('/', addSingleStudent);

module.exports = router;
