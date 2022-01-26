USE employees;

SELECT 'First names of Irena, Vidya, or Maya who are also male' AS 'INFO';
SELECT * FROM employees
WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') AND gender = 'M';

SELECT 'Last names starting or ending with "E"' AS 'INFO';
SELECT * FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%E';

SELECT 'Last names containing a "Q"' AS 'INFO';
SELECT * FROM employees
WHERE last_name LIKE '%Q%';
