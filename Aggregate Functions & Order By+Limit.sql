# Aggregate Functions
# sum, count, max, min, avg
SELECT * FROM employee;
SELECT esal FROM employee;
SELECT SUM(esal) FROM employee;
SELECT count(esal) FROM employee;
SELECT max(esal) FROM employee;
SELECT min(esal) FROM employee;
SELECT avg(esal) FROM employee;
SELECT COUNT(eadd) FROM employee;
SELECT COUNT(*) FROM employee;

SELECT eadd FROM employee;
SELECT DISTINCT eadd FROM employee;
SELECT COUNT(DISTINCT eadd) FROM employee; # DISTINCT=unique

# Question- Increase salary of all employees by 1K
UPDATE employee SET esal=esal+1000;
SELECT * FROM employee;

# ORDER BY
SELECT * FROM employee;
SELECT * FROM employee ORDER by esal; # shows salary in Asc order by default
SELECT * FROM employee ORDER by esal ASC;
SELECT * FROM employee ORDER by esal DESC;

# LIMIT
SELECT * FROM employee;
SELECT * FROM employee LIMIT 3; # shows first 3 rows

# Show 3 employee who are making highest salary
SELECT * FROM employee ORDER BY esal DESC LIMIT 3;





