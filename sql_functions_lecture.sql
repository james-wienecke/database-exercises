USE employees;
SELECT CONCAT('Hello ', 'Codeup', '!');

SELECT CONCAT(first_name, ' ', last_name) AS 'full_name' FROM employees;

SELECT first_name
FROM employees
WHERE first_name LIKE '%sus%';

SELECT first_name
FROM employees
WHERE first_name NOT LIKE '%sus%';

SELECT DAYOFMONTH('1990-05-03');
-- returns 3
SELECT DAY('2017-03-25');
-- returns 25

SELECT MONTH('2008-02-03');
-- returns 2
SELECT YEAR('1987-01-01');
-- returns 1987

SELECT *
FROM employees
WHERE YEAR(birth_date) BETWEEN 1950 AND 1959
    AND MONTH(birth_date) = 7
    AND DAY(birth_date) = 4
ORDER BY YEAR(birth_date);

SELECT NOW();

SELECT CURDATE();

SELECT CURTIME();

SELECT CONCAT('Teaching people to code for ', UNIX_TIMESTAMP() - UNIX_TIMESTAMP('2014-02-04'), ' seconds!');
