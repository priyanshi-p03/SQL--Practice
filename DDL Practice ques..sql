DROP TABLE Student;

CREATE TABLE Student (
student_id INT PRIMARY KEY,
name VARCHAR(50),
age INT,
email VARCHAR(50)
);
DESCRIBE Student;

CREATE TABLE Course (
course_id INT PRIMARY KEY,
course_name VARCHAR(50),
duration INT
);
DESCRIBE Course;

ALTER TABLE Student ADD phone_number VARCHAR(15);

ALTER TABLE Student MODIFY age SMALLINT;

ALTER TABLE Student RENAME TO Students;

ALTER TABLE Course DROP COLUMN duration;

ALTER TABLE Students MODIFY age SMALLINT CHECK (age>=18);






 