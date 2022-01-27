# USE employees;

SELECT * FROM employees.employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT * FROM employees.employees
WHERE last_name LIKE 'E%';

SELECT * FROM employees.employees
WHERE last_name LIKE '%Q%';


SELECT * FROM employees.employees
WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';

# SELECT 'First names of Irena, Vidya, or Maya who are also male' AS 'INFO';
SELECT * FROM employees.employees
WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') AND gender = 'M';

# SELECT 'Last names starting OR ending with "E"' AS 'INFO';
SELECT * FROM employees.employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%E';

# SELECT 'Last names starting AND ending with "E"' AS 'INFO';
SELECT * FROM employees.employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

# SELECT 'Last names containing a "Q" but not "QU"' AS 'INFO';
SELECT * FROM employees.employees
WHERE last_name LIKE '%Q%' AND last_name NOT LIKE '%Qu%';