USE employees;

SELECT dep.dept_name AS 'Department Name',
       CONCAT(emp.first_name, ' ', emp.last_name) AS 'Department Manager'
FROM departments AS dep
JOIN dept_manager AS deptman
ON dep.dept_no = deptman.dept_no
JOIN employees AS emp
ON deptman.emp_no = emp.emp_no
WHERE deptman.to_date = '9999-01-01';

SELECT dep.dept_name AS 'Department Name',
    CONCAT(emp.first_name, ' ', emp.last_name) AS 'Department Manager',
    emp.gender AS 'Gender'
FROM departments AS dep
         JOIN dept_manager AS deptman
              ON dep.dept_no = deptman.dept_no
         JOIN employees AS emp
              ON deptman.emp_no = emp.emp_no
WHERE emp.gender = 'F'
    AND deptman.to_date = '9999-01-01';

SELECT ti.title AS title, COUNT(emp.emp_no) AS 'Total'
FROM titles AS ti
    JOIN employees AS emp
        ON ti.emp_no = emp.emp_no
    JOIN dept_emp AS de
        ON emp.emp_no = de.emp_no
    JOIN departments d
        ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Customer Service'
    AND de.to_date = '9999-01-01'
    AND ti.to_date = '9999-01-01'
GROUP BY ti.title;

SELECT dep.dept_name AS 'Department Name',
       CONCAT(emp.first_name, ' ', emp.last_name) AS 'Department Manager',
       sal.salary AS 'Salary'
FROM departments AS dep
        JOIN dept_manager AS deptman
            ON dep.dept_no = deptman.dept_no
        JOIN salaries AS sal
            ON deptman.emp_no = sal.emp_no
        JOIN employees emp
            ON deptman.emp_no = emp.emp_no
WHERE sal.to_date = '9999-01-01' AND deptman.to_date = '9999-01-01';