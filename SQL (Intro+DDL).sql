# Single Line Comment
/*
Multi 
Line
Comment
For explanation
*/
/*
SQL :- Structured Query Language
SQL works on commands
Types of SQL commands :- DDL, DML, TCL, DCL

DDL : Data Definition Language (to create schema(structure of database))
CREATE, DROP, ALTER

# How to create a database
Syntax:-
CREATE DATABASE croma; (select this and execute)

# How to delete a database
Syntax:-
DROP DATABASE database_name;
DROP DATABASE croma; (it will delete the database)

- SQL is not case sensitive (a=A)

*/
CREATE DATABASE croma;
# USE/SELECT DATABASE
USE croma;
# CREATE TABLE table_name (col1 datatype, col2 datatype..);
CREATE TABLE student (sid INT, sname TEXT, sadd TEXT);
# Add a new column
ALTER TABLE student ADD COLUMN email TEXT;
# Delete a column
ALTER TABLE student DROP COLUMN sadd;
# Delete Table
DROP TABLE student;

CREATE DATABASE college;
USE college;
CREATE TABLE student(
sid INT,
sname TEXT,
sadd TEXT,
semail TEXT
);
ALTER TABLE student ADD COLUMN smob TEXT;
DESCRIBE student;
ALTER TABLE student DROP COLUMN semail;
 
# Change datatype of a column smob(Text)-> INT
ALTER TABLE student MODIFY smob INT;
