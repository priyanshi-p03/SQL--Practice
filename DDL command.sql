/*
DDL:- Data Definition Language

  TINYBIT 1B(8 bits)  -128 to 127
     1 bit reserved for signed values (-,+)
     7 bit=> 2^7 => 128
  SMALLINT 2B(16 bits) -32768 to 32767
     1 bit reserved for signed values (-,+)
     15 bit=> 2^15 => 32768
  MEDIUMINT 3B(24 bits) 
  INT 4B(32 bits) -214Cr to 214Cr
  BIGINT 8B(64 bits) 90KCrCr
  
  FLOAT 4B
  DECIMAL(limit_number, point_value)
  
  TINYTEXT => 255 Characters
  TEXT => 65K Characters
  MEDIUMTEXT
  LARGETEXT
  
  CHAR(N) => 255 Characters
  VARCHAR(N) => 0-65K Characters
  
  DECIMAL(8,2) => A number of 8 digits and with 2 decimal values included in 8 digits
  e.g. 545778.75
  
  BOOL/BOOLEAN  1Byte (TINYINT(1))
  
  */
  CREATE DATABASE apple;
  USE apple;
  CREATE TABLE employee(
  eid INT,
  ename VARCHAR(25),
  eadd VARCHAR(200),
  eemail TINYTEXT,
  emobile VARCHAR(15),
  esal DECIMAL(8,2),
  estatus BOOLEAN
);

# PRIMARY KEY => Can not store duplicate, blank/null values
# (Primary key can be a foreign key for another table)
CREATE TABLE product(
pid INT PRIMARY KEY AUTO_INCREMENT,
pname VARCHAR(30) NOT NULL,
price DECIMAL(8,2) NOT NULL
);

# Only one primary key can be possible in one table
# UNIQUE can not store duplicate (Duplicate not allowed)
DROP TABLE employee;
CREATE Table employee(
eid INT PRIMARY KEY AUTO_INCREMENT,
ename VARCHAR(30) NOT NULL,
eemail VARCHAR(50) UNIQUE NOT NULL,
eage TINYINT NOT NULL CHECK(eage>17),
esal DECIMAL(8,2) NOT NULL,
ecountry VARCHAR(20) DEFAULT "INDIA",
estatus BOOLEAN DEFAULT 1
);

INSERT INTO employee(ename, eemail, eage, esal)
VALUES('Akansha', 'akansha456@gmail.com', 20, 879790.67);

INSERT INTO employee(ename, eemail, eage, esal)
VALUES('Raman', 'raman906@gmail.com', 22, 853790.67);

INSERT INTO employee(ename, eemail, eage, esal)
VALUES('Tara', 'tara008@gmail.com', 23, 878858.78);

SELECT * FROM employee;