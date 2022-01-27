USE employees;

SELECT CONCAT(first_name, ' ', last_name) AS 'full_name'
FROM employees
LIMIT 10;

SELECT emp_no, CONCAT(first_name, ' ', last_name) AS 'full_name', birth_date AS 'DOB'
FROM employees
LIMIT 10;

