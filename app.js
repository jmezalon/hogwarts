const express = require('express');
const app = express();
const bodyParser = require('body-Parser');
const students = require('./routes/students.js');
const teachers = require('./routes/teachers.js');

app.use(bodyParser.urlencoded({extended: false}));
app.use(bodyParser.json());

app.use('/students', students);
app.use('/teachers', teachers);

app.get('*', (req, res) => {
  res.send('error')
})
//this is a check
//i'm trying to repo this on git hub


app.listen(2019, () => {
  console.log('you are building hogwards on port 2019')
})
