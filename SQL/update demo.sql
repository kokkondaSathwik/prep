CREATE DATABASE xyz;
USE xyz;

CREATE TABLE employee(
id INT PRIMARY KEY,
name VARCHAR(50),
age INT,
dept VARCHAR(50),
city VARCHAR(50),
salary INT
);

INSERT INTO employee(id,name,age,dept,city,salary)
VALUES
(1,"a",19,"IT","Mumbai",1500),
(2,"b",20,"CSE","shimla",1600),
(3,"c",49,"ds","hyd",2500);
SELECT * FROM employee;

UPDATE employee
SET salary = 50000
WHERE dept="ds";

UPDATE employee
SET name = "sathwik"
WHERE name = "a";

SET SQL_SAFE_UPDATES=0;

DELETE FROM employee
WHERE dept="CSE";

DELETE FROM employee
WHERE name = "c";

SELECT name,salary FROM employee;
SELECT * FROM employee;

INSERT INTO employee(id,name,age,dept,city,salary)
VALUES
(2,"b",20,"CSE","shimla",1600),
(3,"c",49,"ds","hyd",2500);

SELECT * FROM employee
WHERE age >20;

ALTER TABLE employee
ADD dob VARCHAR(50) DEFAULT "np";

ALTER TABLE employee
DROP COLUMN dob;

ALTER TABLE employee
MODIFY age VARCHAR(50);

ALTER TABLE employee
CHANGE city city1 VARCHAR(50);

ALTER TABLE employee
RENAME COLUMN age TO emp_age;

SELECT * FROM employees;

RENAME TABLE employee TO employees;

CREATE TABLE salarydetails(
salary INT,
increment INT
);

INSERT INTO salarydetails(salary,increment)
VALUES
(1200,6),
(1500,8);

SELECT * FROM salarydetails;
TRUNCATE TABLE salarydetails;

SELECT DISTINCT name,salary
FROM employees;

SELECT * FROM employees;

-- AND OPERATOR
SELECT * FROM employees
WHERE emp_age>15 AND dept= "IT";

SELECT * FROM employees
WHERE dept NOT IN("IT");

SELECT * FROM employees
WHERE dept IN ("IT","CSE");

SELECT * FROM employees
WHERE dept IS NOT NULL;

SELECT * FROM employees
WHERE name LIKE's%';

SELECT * FROM employees
WHERE name LIKE'_a%';

SELECT * FROM employees;

SELECT * FROM employees
WHERE salary BETWEEN 1000 AND 1800
LIMIT 1;

-- MAXIMUM SALARY
SELECT * FROM  employees
ORDER BY salary DESC ;

-- AGGREGATE fUNCTIONS

SELECT COUNT(name) FROM employees;
SELECT SUM(salary) FROM employees;
SELECT AVG(salary) FROM employees;
SELECT MIN(salary),MAX(salary) FROM employees;

INSERT INTO employees(id,name,emp_age,dept,city1,salary)
VALUES
(4,"d",23,"IT","Bachupally",4500),
(5,"e",24,"CSE","NIZAMPET",5500);
SELECT * FROM employees;

SELECT dept,AVG(salary) AS avgsal
FROM employees
GROUP BY dept
HAVING avgsal>1000;

-- difference between where and having clause is where is used to filter out the data without using aggregate functions
-- having clause is used along with aggregate functions after filtered out data based on the conditions

SELECT COUNT(id) AS TOTAL FROM employees;


UPDATE employees
SET city1="hyd"
WHERE id=5;
SELECT * FROM employees;

SELECT city1,count(city1) AS TOTAL FROM employees
GROUP BY city1
HAVING TOTAL>=1;

SELECT city1,MAX(salary) AS max_salary FROM employees
GROUP BY city1
ORDER BY max_salary DESC;

SELECT dept,COUNT(dept) AS TOTAL FROM employees
GROUP BY dept
ORDER BY TOTAL DESC;


























































