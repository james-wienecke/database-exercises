USE employees;

SELECT dep.dept_name AS department_name,
    CONCAT(emp.first_name, ' ', emp.last_name) AS manager
FROM departments AS dep
    JOIN dept_manager AS deptman
        ON dep.dept_no = deptman.dept_no
        AND deptman.to_date = '9999-01-01'
    JOIN employees AS emp
        ON deptman.emp_no = emp.emp_no;

SELECT dep.dept_name AS department_name,
    CONCAT(emp.first_name, ' ', emp.last_name) AS manager,
    emp.gender AS gender
FROM departments AS dep
     JOIN dept_manager AS deptman
        ON dep.dept_no = deptman.dept_no
        AND deptman.to_date = '9999-01-01'
     JOIN employees AS emp
        ON deptman.emp_no = emp.emp_no
        AND emp.gender = 'F';

SELECT ti.title AS title,
    COUNT(emp.emp_no) AS total
FROM titles AS ti
    JOIN employees AS emp
        ON ti.emp_no = emp.emp_no
    JOIN dept_emp AS de
        ON emp.emp_no = de.emp_no
        AND de.to_date = '9999-01-01'
    JOIN departments d
        ON de.dept_no = d.dept_no
        AND d.dept_name = 'Customer Service'
WHERE ti.to_date = '9999-01-01'
GROUP BY ti.title;

SELECT dep.dept_name AS department_name,
       CONCAT(emp.first_name, ' ', emp.last_name) AS manager,
       sal.salary AS salary
FROM departments AS dep
        JOIN dept_manager AS deptman
            ON dep.dept_no = deptman.dept_no
        JOIN salaries AS sal
            ON deptman.emp_no = sal.emp_no
            AND sal.to_date = '9999-01-01'
        JOIN employees emp
            ON deptman.emp_no = emp.emp_no
            AND deptman.to_date = '9999-01-01';

SELECT CONCAT(emp.first_name, ' ', emp.last_name) AS employee,
       dep.dept_name AS department,
       CONCAT(dman.first_name, ' ', dman.last_name) AS manager
FROM employees AS emp
    JOIN dept_emp AS de
        ON emp.emp_no = de.emp_no
    JOIN departments AS dep
        ON de.dept_no = dep.dept_no
        AND de.to_date = '9999-01-01'
    JOIN dept_manager AS dm
        ON dep.dept_no = dm.dept_no
        AND dm.to_date = '9999-01-01'
    JOIN employees AS dman
        ON dm.emp_no = dman.emp_no;