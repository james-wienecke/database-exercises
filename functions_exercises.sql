# USE employees;

SELECT CONCAT(first_name, ' ', last_name) AS 'full_name'
FROM employees.employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name DESC, first_name DESC;

SELECT CONCAT(first_name, ' ', last_name) AS 'full_name'
FROM employees.employees
WHERE last_name LIKE 'E%'
ORDER BY last_name DESC, first_name DESC;

SELECT CONCAT(first_name, ' ', last_name) AS 'full_name'
FROM employees.employees
WHERE last_name LIKE '%Q%'
ORDER BY last_name DESC, first_name DESC;

SELECT CONCAT(first_name, ' ', last_name) AS 'full_name'
FROM employees.employees
WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya'
ORDER BY last_name DESC, first_name DESC;

# SELECT 'First names of Irena, Vidya, or Maya who are also male' AS 'INFO';
SELECT CONCAT(first_name, ' ', last_name) AS 'full_name'
FROM employees.employees
WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
  AND gender = 'M'
ORDER BY last_name DESC, first_name DESC;

# SELECT 'Last names starting OR ending with "E"' AS 'INFO';
SELECT CONCAT(first_name, ' ', last_name) AS 'full_name'
FROM employees.employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%E'
ORDER BY emp_no DESC;

# SELECT 'Last names starting AND ending with "E"' AS 'INFO';
SELECT CONCAT(first_name, ' ', last_name) AS 'full_name' FROM employees.employees
WHERE last_name LIKE 'E%E';

# SELECT 'Last names containing a "Q" but not "QU"' AS 'INFO';
SELECT CONCAT(first_name, ' ', last_name) AS 'full_name'  FROM employees.employees
WHERE last_name LIKE '%Q%' AND last_name NOT LIKE '%Qu%';

SELECT * FROM employees.employees
WHERE MONTH(birth_date) = 12 AND DAY(birth_date) = 25;

SELECT *
FROM employees.employees
WHERE MONTH(birth_date) = 12
  AND DAY(birth_date) = 25
  AND YEAR(hire_date) BETWEEN 1990 AND 1999;

SELECT *
FROM employees.employees
WHERE MONTH(birth_date) = 12
  AND DAY(birth_date) = 25
  AND YEAR(hire_date) BETWEEN 1990 AND 1999
ORDER BY birth_date, hire_date DESC;

SELECT first_name, last_name, DATEDIFF(CURDATE(), hire_date) AS 'Days worked here'
FROM employees.employees
WHERE MONTH(birth_date) = 12
  AND DAY(birth_date) = 25
  AND YEAR(hire_date) BETWEEN 1990 AND 1999
ORDER BY DATEDIFF(CURDATE(), hire_date) DESC;