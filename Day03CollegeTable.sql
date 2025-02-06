-- Create this sample table

CREATE DATABASE college_JU;

USE college_JU;

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


