/*
JOIN
Database:-> store
Table:-> customer, product, orders
customer (cid, cname, cmob, cadd)
product  (pid, pname, price)
orders   (oid, cid, pid, qty)

*/

CREATE DATABASE store;
USE store;

CREATE TABLE customer(
cid INT PRIMARY KEY AUTO_INCREMENT,
cname VARCHAR(100) NOT NULL,
cmob VARCHAR(15) NOT NULL UNIQUE,
cadd VARCHAR(100) NOT NULL
);

INSERT INTO customer VALUES
(101, 'Raman', '7865349087', 'NOIDA'),
(102, 'Aman', '8908659087', 'DELHI'),
(103, 'Riya', '7865345632', 'DEHRADUN'),
(104, 'Priya', '6789436234', 'GURGAON');

CREATE TABLE product(
pid INT PRIMARY KEY AUTO_INCREMENT,
pname VARCHAR(100) NOT NULL,
price DECIMAL(8,2) NOT NULL
);

INSERT INTO product VALUES
(501, 'Monitor', 8700),
(502, 'Keyboard', 970),
(503, 'Graphic Card', 18000),
(504, 'Mouse', 470);

CREATE TABLE orders(
oid INT PRIMARY KEY AUTO_INCREMENT,
cid INT NOT NULL,
pid INT NOT NULL,
qty INT DEFAULT 1
);

INSERT INTO orders (cid, pid, qty) VALUES
(101, 503, 5),
(103, 502, 8),
(102, 504, 6),
(104, 501, 4);

SELECT * FROM customer;
SELECT * FROM product;
SELECT * FROM orders;

# JOIN
SELECT * FROM orders;
SELECT * FROM customer;

# CROSS JOIN (rows= table1_rows x table2_rows)
SELECT * FROM customer
JOIN orders;

SELECT * FROM customer
CROSS JOIN orders;
# BOTH QUERIES ARE SAME


