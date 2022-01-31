USE employees;

SELECT dep.dept_name AS 'Department Name',
       CONCAT(emp.first_name, ' ', emp.last_name) AS 'Department Manager'
FROM departments AS dep
JOIN dept_manager AS deptman
ON dep.dept_no = deptman.dept_no
JOIN employees AS emp
ON deptman.emp_no = emp.emp_no;