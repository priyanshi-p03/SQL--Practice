/*
*/
USE amazon;
SELECT * FROM employee;
UPDATE employee SET ename = 'Anu';

# OFF SAFE UPDATES- FOR DELETE OR UPDATE
SET SQL_SAFE_UPDATES = 0;

# CLAUSES
CREATE DATABaSE school;
USE school;
CREATE TABLE teacher(
tid INT PRIMARY KEY AUTO_INCREMENT,
tname VARCHAR(30) NOT NULL,
tmob VARCHAR(15) NOT NULL,
tsal DECIMAL(8,2) DEFAULT 0.0,
tadd VARCHAR(100) NOT NULL,
tage INT NOT NULL CHECK(tage>18)
); 

INSERT INTO teacher VALUES(101, 'Riyansh', '+917783876799', 56828.89, 'NOIDA', 21);
INSERT INTO teacher(tid, tname, tmob, tadd, tage)
VALUES(102, 'Arya', '+916784976578', 'DELHI', 22);
SELECT * FROM teacher;

INSERT INTO teacher(tname, tmob, tsal, tadd, tage) VALUES
('Reah', '+917783876567', 96568.89, 'NOIDA', 25),
('Aradhya', '+917783876799', 67828.89, 'GZB', 26),
('Priya', '+916789876710', 56789.45, 'GURGAON', 19),
('Aman', '+919783878990', 23568.67, 'DELHI', 20),
('Anshika', '+918783876734', 67789.39, 'GZB', 27);

SELECT * FROM teacher;

# WHERE
SELECT * FROM teacher WHERE tage>21;
SELECT * FROM teacher WHERE tsal>50000;
SELECT * FROM teacher WHERE tadd='NOIDA';
SELECT * FROM teacher WHERE tadd='DELHI';

# AND
SELECT * FROM teacher WHERE tadd='NOIDA' AND tsal>50000;

# OR
SELECT * FROM teacher WHERE tadd='DELHI' AND tsal>20000;

# AGGREGATE FUNCTIONS
# sum, count, average, max, min
SELECT * FROM teacher;
SELECT count(*) FROM teacher;
SELECT tsal FROM teacher;
SELECT sum(tsal) FROM teacher;
SELECT max(tsal) FROM teacher;
SELECT min(tsal) FROM teacher;
SELECT avg(tsal) FROM teacher;

# GROUP BY
SELECT * FROM teacher;
SELECT COUNT(*) FROM teacher;
SELECT COUNT(*) FROM teacher GROUP BY tsal;
SELECT tsal,COUNT(*) FROM teacher GROUP BY tsal;
SELECT tadd,count(*) FROM teacher GROUP BY tadd;

# ORDER BY
SELECT * FROM teacher;
SELECT * FROM teacher ORDER BY tsal;
SELECT * FROM teacher ORDER BY tsal ASC;
SELECT * FROM teacher ORDER BY tsal DESC;
SELECT * FROM teacher ORDER BY tname ASC;

# WHERE CLAUSE CAN NOT WORK WITH AGGREGATE FUNCTIONS IF YOU HAVE GROUP BY IN YOUR QUERY
SELECT tadd,SUM(tsal) FROM teacher GROUP BY tadd WHERE SUM(tsal)>90000;

# Instead of WHERE we use HAVING
SELECT tadd,SUM(tsal) FROM teacher GROUP BY tadd HAVING SUM(tsal)>90000;

# But you can use HAVING instead of WHERE, if there is no GROUP BY
SELECT * FROM teacher WHERE tsal>50000;
SELECT * FROM teacher HAVING tsal>50000;

# LIMIT
SELECT * FROM teacher;
SELECT * FROM teacher LIMIT 4;
SELECT * FROM teacher ORDER BY tsal DESC;
SELECT * FROM teacher ORDER BY tsal DESC LIMIT 5;

# FOR HIGHEST SALRY
SELECT * FROM teacher ORDER BY tsal DESC LIMIT 1;

# FOR SECOND HIGHEST
SELECT * FROM teacher ORDER BY tsal DESC LIMIT 1 OFFSET 1;

# WILD CARDS (%,_)
# LIKE

SELECT * FROM teacher WHERE tadd='NOIDA';
SELECT * FROM teacher WHERE tadd LIKE 'N%';
SELECT * FROM teacher WHERE tadd LIKE '%n%';

# LIKE _
SELECT * FROM teacher WHERE tadd LIKE '_e%';
SELECT * FROM teacher WHERE tadd LIKE '__i%';

# IN 
SELECT * FROM teacher WHERE tadd='NOIDA' OR tadd='DELHI';

SELECT * FROM teacher WHERE tadd IN ('NOIDA','DELHI');

# BETWEEN
SELECT * FROM teacher WHERE tsal>50000 AND tsal<70000;

SELECT * FROM teacher WHERE tsal BETWEEN 50000 AND 70000;

# DISTINCT
SELECT tadd FROM teacher;

SELECT DISTINCT tadd FROM teacher;

# DELETE EVERYTHING 
SHOW TABLES;
DESCRIBE employee;




 
