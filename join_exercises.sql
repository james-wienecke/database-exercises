USE employees;

# a query that shows each department along with the name
# of the current manager for that department
SELECT dep.dept_name AS department_name,
    CONCAT(emp.first_name, ' ', emp.last_name) AS manager
FROM departments AS dep
    JOIN dept_manager AS deptman
        ON dep.dept_no = deptman.dept_no
        AND deptman.to_date > CURDATE()
    JOIN employees AS emp
        ON deptman.emp_no = emp.emp_no
ORDER BY dep.dept_name;

# Find the name of all departments currently managed by women
SELECT dep.dept_name AS department_name,
    CONCAT(emp.first_name, ' ', emp.last_name) AS manager,
    emp.gender AS gender
FROM departments AS dep
     JOIN dept_manager AS deptman
        ON dep.dept_no = deptman.dept_no
        AND deptman.to_date > CURDATE()
     JOIN employees AS emp
        ON deptman.emp_no = emp.emp_no
        AND emp.gender = 'F'
ORDER BY dep.dept_name;

# Find the current titles of employees currently working in the Customer Service department
SELECT ti.title AS title,
    COUNT(emp.emp_no) AS total
FROM titles AS ti
    JOIN employees AS emp
        ON ti.emp_no = emp.emp_no
    JOIN dept_emp AS de
        ON emp.emp_no = de.emp_no
        AND de.to_date > CURDATE()
    JOIN departments AS dep
        ON de.dept_no = dep.dept_no
        AND dep.dept_name = 'Customer Service'
WHERE ti.to_date > CURDATE()
GROUP BY ti.title
ORDER BY COUNT(ti.emp_no) DESC;

# Find the current salary of all current managers
SELECT dep.dept_name AS department_name,
       CONCAT(emp.first_name, ' ', emp.last_name) AS manager,
       sal.salary AS salary
FROM departments AS dep
        JOIN dept_manager AS deptman
            ON dep.dept_no = deptman.dept_no
        JOIN salaries AS sal
            ON deptman.emp_no = sal.emp_no
            AND sal.to_date > CURDATE()
        JOIN employees AS emp
            ON deptman.emp_no = emp.emp_no
            AND deptman.to_date > CURDATE()
ORDER BY dep.dept_name;

# Bonus Find the names of all current employees,
# their department name, and their current manager's name
SELECT CONCAT(emp.first_name, ' ', emp.last_name) AS employee,
       dep.dept_name AS department,
       CONCAT(dman.first_name, ' ', dman.last_name) AS manager
FROM employees AS emp
    JOIN dept_emp AS de
        ON emp.emp_no = de.emp_no
    JOIN departments AS dep
        ON de.dept_no = dep.dept_no
        AND de.to_date > CURDATE()
    JOIN dept_manager AS dm
        ON dep.dept_no = dm.dept_no
        AND dm.to_date > CURDATE()
    JOIN employees AS dman
        ON dm.emp_no = dman.emp_no
ORDER BY dep.dept_name, emp.last_name, emp.first_name;