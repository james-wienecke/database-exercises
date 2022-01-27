USE employees;

SELECT first_name
FROM employees
GROUP BY first_name
ORDER BY COUNT(first_name) DESC
LIMIT 10;