-- Create this sample table

CREATE DATABASE college_JNU_RJ;

USE college_JNU_RJ;

CREATE TABLE student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(5),
    city VARCHAR(50)
);

INSERT INTO student VALUE(101, "Anil", 78, "C", "Pune");
INSERT INTO student VALUE(102, "bhumika", 95, "A+", "Delhi");
INSERT INTO student VALUE(103, "Chetan", 88, "B", "Jaipur");
INSERT INTO student VALUE(104, "dhruv", 96, "O", "Kota");
INSERT INTO student VALUE(105, "Emanuel", 78, "C", "Mubai");
INSERT INTO student VALUE(106, "farah", 85, "B+", "Bhopal");

-- It's is used for the Praticular parts

SELECT rollno, name, marks, grade FROM student;

-- It's is used for the Duplicate value 

SELECT DISTINCT city FROM student;


-- Where Clause Using operator in WHERE

SELECT *FROM student WHERE marks>=80;

SELECT *FROM student WHERE marks>=85 AND city = "Delhi";

SELECT *FROM student WHERE marks+10>=85 AND city = "Jaipur";


SELECT *FROM student WHERE marks>=85 OR city = "Delhi";

-- Between (Select for a given range)
SELECT *FROM student WHERE marks BETWEEN 80 AND 90;

-- In (mathces any value in the list)

SELECT *FROM student WHERE city IN ("Delhi", "Mubai");

-- NOT (to negatethe given condition)

SELECT * FROM student WHERE city NOT IN ("Delhi", "Mubai");

-- Limit

SELECT *FROM student WHERE marks>=75 LIMIT 3;

-- Order By Clause - To sort in ascending (ASC) or descending order (DESC)

SELECT *FROM student ORDER BY marks ASC;

SELECT *FROM student ORDER BY marks DESC LIMIT 3;

-- Aggregate functions Aggregate function perform a calculation on a set of values, and return a single value.?

-- Minimum function
SELECT MIN(marks) FROM student;

-- Maximum function
SELECT MAX(marks) FROM student;

-- Count function
SELECT COUNT(marks) FROM student;

-- Count function
SELECT COUNT(marks) FROM student;

-- Average function
SELECT AVG(marks) FROM student;

-- Sum function
SELECT SUM(marks) FROM student;


-- Group By Clause groups rows that have the same values into summary row.
SELECT city, count(name)
FROM student
GROUP BY city;

-- Write th Query to find avg marks in each city in ascening order.
SELECT city, AVG(marks) 
FROM student 
GROUP BY city
ORDER BY city ASC;

-- Practice Qs
-- for the given table, find the total payment according to each payment method.

CREATE DATABASE Payment_Online;

USE Payment_Online;

CREATE TABLE customer(
	customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    mode VARCHAR(50),
    city VARCHAR(50)
    
);

INSERT INTO customer VALUE (101, "Olivia Barrett", "Netbanking", "Portland");

SELECT *FROM customer;

SELECT mode, count(customer_name)
FROM customer
GROUP BY mode;

SELECT grade, count(name)
FROM student
GROUP BY grade;


-- Having Clause Similar to where i.e applies some conditon on row.alter
-- Used when we want to apply any condition after grouping
-- Count number of students in each city where max marks cross

SELECT count(name), city
FROM student
GROUP BY city
HAVING max(marks)>90;



-- General Order
SELECT city
FROM student
WHERE grade = "A+"
GROUP BY city
HAVING MAX(marks)>90
ORDER BY city ASc;




