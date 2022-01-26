USE employees;

SELECT 'First names of Irena, Vidya, or Maya' AS 'INFO';
SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT 'Last names starting with "E"' AS 'INFO';
SELECT * FROM employees
WHERE last_name LIKE 'E%';

SELECT 'Last names containing a "Q"' AS 'INFO';
SELECT * FROM employees
WHERE last_name LIKE '%Q%';
