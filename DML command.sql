/*
# DML Command :- Data Manipulation Language
   INSERT(C), SELECT(R), UPDATE(U), DELETE(D),
   CRUD Operations
   
INSERT INTO table_name VALUE(val1, val2, val3....);
SELECT * FROM table_name;
*/
DROP DATABASE amazon;
CREATE DATABASE amazon;
USE amazon;
CREATE TABLE employee(
eid INT,
ename TEXT,
emobile TEXT,
eadd TEXT
);
ALTER TABLE employee ADD COLUMN eemail TEXT;
DESCRIBE employee;
ALTER TABLE employee DROP emobile;
DESCRIBE employee;

INSERT INTO employee VALUE(101, 'Riya','Noida', 'riya123@gmail.com' );
SELECT * FROM employee;

# UPDATE
UPDATE employee SET eadd='GZB' WHERE eid=101;


   