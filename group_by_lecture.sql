USE employees;

SELECT first_name
FROM employees
GROUP BY first_name
ORDER BY COUNT(first_name) DESC
LIMIT 10;

SELECT hire_date, COUNT(*)
FROM employees
GROUP BY hire_date
ORDER BY hire_date;

SELECT SUM(salary) FROM salaries WHERE YEAR(to_date) = 9999;