SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
LEFT JOIN salaries s
ON e.emp_no = s.emp_no;

SELECT first_name, last_name, hire_date
FROM employees 
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

SELECT m.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM employees e
LEFT JOIN dept_manager m
ON e.emp_no = d.emp_no
LEFT JOIN departments d
ON d.dept_no = m.dept_no;

SELECT first_name, last_name, sex
FROM employees 
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';
