-- Create the Database
CREATE DATABASE  university;

-- CREATE DATABASE IF NOT EXISTS university;

-- DROP DATABASE IF EXISTS company;

-- Use the University DataBase
USE university;

-- Create the Table

CREATE TABLE student(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
);

-- Insert the data for the Table

INSERT INTO student VALUE(101, "SURAJ",18);
INSERT INTO student VALUE(102, "RAVI",18);
INSERT INTO student VALUE(103, "MOHIT",18);
INSERT INTO student VALUE(104, "ANMOL",18);

-- Print the Table
SELECT * FROM student;

-- Show the DataBase

SHOW DATABASES;

-- Show the Table
SHOW TABLES;