# DML :- Data Manipulation Language
# SELECT, DELETE, UPDATE, INSERT

USE college;
# INSERT
# INSERT INTO table_name VALUE(val1, val2, val3..);
INSERT INTO student VALUE(101, 'Rahul Kumar', 'Noida', 870657);
DESCRIBE student;
INSERT INTO student VALUE(102, 'Siya', 'DELHI', 867547);
#INSERT INTO table(col1,col2) VALUE(val1, val2);
INSERT INTO student(sid, sname, smob) VALUE(103, 'Monu', 7864535);
INSERT INTO student(sid, sname, sadd) VALUE(104, 'Anuv', 'Noida');
INSERT INTO student VALUES
(105, 'Ravi', 'Noida', 678975),
(106, 'Rohit', 'Delhi', 786956),
(107, 'Shubham', 'Noida', 876789);
SELECT * FROM student;

# SELECT (to read data)
# SELECT col1, col2,..FROM table_name;
SELECT sid, sname, sadd, smob FROM student;
SELECT * FROM student;

# Turn off safe updates mode
SET SQL_SAFE_UPDATES =0;

# UPDATE
# UPDATE table_name SET col_name=value;
UPDATE student SET sadd = 'GZB' WHERE sid=103;
UPDATE student SET smob=999978 WHERE sname='Anu';

# DELETE
# DELETE FROM table_name;
DELETE FROM student WHERE sid=105;





