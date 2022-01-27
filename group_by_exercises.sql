USE employees;
SELECT DISTINCT title FROM titles;

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY last_name
ORDER BY last_name;

SELECT DISTINCT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY first_name, last_name
ORDER BY last_name;

SELECT last_name
FROM employees
WHERE last_name LIKE '%Q%'
  AND last_name NOT LIKE '%QU%'
GROUP BY last_name;

SELECT last_name, COUNT(*)
FROM employees
WHERE last_name LIKE '%Q%'
  AND last_name NOT LIKE '%QU%'
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;

SELECT COUNT(*) AS 'count', gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;
