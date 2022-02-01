# Find all the employees with the same hire date as employee 101010 using a subquery.
# 69 Rows
SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS full_name,
       employees.hire_date
FROM employees.employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
    );

# Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles
SELECT ti.title,
       COUNT(ti.title) AS titles_held
FROM titles AS ti
WHERE emp_no IN (
    SELECT emp_no
    FROM employees AS emp
    WHERE emp.first_name = 'Aamod'
    )
GROUP BY ti.title;

# Find all the current department managers that are female.
SELECT employees.first_name, employees.last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager as deptman
    WHERE employees.employees.gender = 'F'
    AND deptman.to_date > CURDATE()
    );

#  BONUS  #
# Find all the department names that currently have female managers.
SELECT dep.dept_name AS department_name
FROM departments AS dep
WHERE dep.dept_no IN (
    SELECT deptman.dept_no
    FROM dept_manager AS deptman
    WHERE deptman.emp_no IN (
        SELECT emp.emp_no
        FROM employees AS emp
        WHERE emp.gender = 'F'
        )
    );

SELECT dep.dept_name AS department_name
FROM (
    SELECT *
    FROM departments AS dpt
    WHERE dpt.dept_no IN (
        SELECT deptman.dept_no
        FROM dept_manager as deptman
        WHERE deptman.emp_no IN (
            SELECT emp.emp_no
            FROM employees AS emp
            WHERE emp.gender = 'F'
            )
        )
    ) AS dep;

SELECT *
FROM employees
WHERE employees.gender = 'F';

# Find the first and last name of the employee with the highest salary.