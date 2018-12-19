DROP DATABASE IF EXISTS hogwarts;
CREATE DATABASE hogwarts;
\c hogwarts;
DROP TABLE IF EXISTS teachers;
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS classes;
DROP TABLE IF EXISTS wands;
CREATE TABLE teachers (
  id SERIAL PRIMARY KEY,
  name VARCHAR NOT NULL,
  subject VARCHAR NOT NULL
);
CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  name VARCHAR NOT NULL,
  house VARCHAR NOT NULL
);
CREATE TABLE classes (
  teacher_id INT REFERENCES teachers(id) ON DELETE CASCADE,
  student_id INT REFERENCES students(id) ON DELETE CASCADE
);
CREATE TABLE wands (
  name VARCHAR NOT NULL,
  type VARCHAR NOT NULL,
  length INT,
  core VARCHAR NOT NULL,
  student_id INT REFERENCES students(id) ON DELETE CASCADE
);
INSERT INTO teachers(name, subject) VALUES ('Jonelle Bain', 'Art'), ('Jean Max', 'Math'), ('Teacher Nikki', 'Shade');
INSERT INTO students(name, house) VALUES ('Samantha', 'Gryffinor'), ('Alex', 'Ravenclaw'), ('Teeta', 'Huffleclaw');
