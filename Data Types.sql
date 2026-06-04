/*
## DATA TYPES ##
-> 1Byte = 8Bit
TINYINT     1Byte      -128 to 127
SMALLINT    2Byte      -32K to 32K
MEDIUMINT   3Byte      -8M to 8M
INT         4Byte      -2B to 2.47B
BIGINT      8Byte      Huge Number

FLOAT       Appropriate
DOUBLE      Appropriate, Slower
DECIMAL     Exact (Example- DECIMAL(10,2)= (99999999.99))

Textual Data
TINYTEXT    -255 character
TEXT        -65K
MEDIUMINT   -16MB
LONGTEXT    -4GB
CHAR        -255 character (Faster)
VARCHAR     -65K (fatser/variable) (eg. VARCHAR(20))
*/

CREATE DATABASE school;
USE school;
CREATE TABLE student(
sid INT PRIMARY KEY AUTO_INCREMENT,
sname VARCHAR(50) NOT NULL,
sadd VARCHAR(100) NOT NULL,
smob VARCHAR(15) NOT NULL,
semail VARCHAR(50) UNIQUE NOT NULL,
sfees DECIMAL(8,2) NOT NULL,
sage TINYINT CHECK(sage>9),
sstatus VARCHAR(10) DEFAULT "ACTIVE"
);
INSERT INTO student(sname, sadd, smob, semail, sfees, sage)
VALUES('Mohan', 'Noida', 8797546867, 'mohan123@gmail.com', 6758.67, 22);
INSERT INTO student(sname, sadd, smob, semail, sfees, sage)
VALUES('Rahul', 'Delhi', 6789546789, 'rahul12@gmailcom', 8768.56, 18);
INSERT INTO student(sname, sadd, smob, semail, sfees, sage)
VALUES('Rahul Dev', 'GZB', 9876578976, 'rahul103@gmail.com', 4567.87, 21);

SELECT * FROM student;

DROP DATABASE amazon;
CREATE DATABASE amazon;
USE amazon;
CREATE TABLE employee(
eid INT PRIMARY KEY AUTO_INCREMENT,
ename VARCHAR(50) NOT NULL,
eadd VARCHAR(50) NOT NULL,
esal DECIMAL(8,2) DEFAULT 0.0
);
DESCRIBE employee;

INSERT INTO employee VALUE(101, 'Rahul', 'Noida', 6788.67);
SELECT * FROM employee;
INSERT INTO employee (ename, eadd, esal) VALUE('Raman', 'GZB', 56788);
INSERT INTO employee (ename, eadd, esal) VALUES
('Riya', 'Delhi', 98769.89),
('Palak', 'Noida', 57689.55),
('Nitin', 'NULL', 78643.22),
('Priya', 'Noida', 97678.88),
('Akash', 'Delhi', 87698.45);

SELECT * FROM employee;

# UPDATE + WHERE condition
# UPDATE table_name SET colname=value WHERE condition;
SELECT * FROM employee;
SELECT * FROM employee WHERE esal>70000;

UPDATE employee SET eadd='Delhi'; # it will change entire column
UPDATE employee SET eadd='Delhi' WHERE eid=105; # update address for 105 id only
UPDATE employee SET esal=35000 WHERE eid=106;
UPDATE employee SET esal=50000 WHERE eid=108;

# DELETE
# DELETE FROM table_name
DELETE FROM employee WHERE eid=106;
SELECT * FROM employee;