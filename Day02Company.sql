-- Create a database for your company named XYZ

CREATE DATABASE xyz_company;
USE xyz_company;

CREATE TABLE employee(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT 
);

INSERT INTO employee VALUE(1, "adam", 25000);
INSERT INTO employee VALUE(2, "bob", 25000);
INSERT INTO employee VALUE(3, "casey", 40000);


-- Print the Table
SELECT * FROM employee;

-- Show the DataBase

SHOW DATABASES;

-- Show the Table
SHOW TABLES;


CREATE TABLE temp1(
	id INT UNIQUE
);

INSERT INTO temp1 VALUE(101);
INSERT INTO temp1 VALUE(102);

SELECT * FROM temp1;

CREATE TABLE emp1(
	id INT,
    salary INT DEFAULT 25000
);

INSERT INTO emp1 (id) VALUE(101);

SELECT *FROM emp1;



CREATE TABLE city (
	id INT PRIMARY KEY,
    city VARCHAR(50),
    age  INT,
    CONSTRAINT age_check CHECK (age>=18 AND city = "DELHI")
);

INSERT INTO city VALUE (301, "SITAMARHI", 18);
INSERT INTO city VALUE (302, "JAIPUR", 17);
INSERT INTO city VALUE (303, "KANPUR", 21);
INSERT INTO city VALUE (304, "DELHI", 15);
INSERT INTO city VALUE (304, "DELHI", 21);

SELECT * FROM city;