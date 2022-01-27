USE employees;

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees AS emp
GROUP BY full_name, last_name
ORDER BY last_name, full_name
LIMIT 25;

# SELECT birth_date, Contactc''