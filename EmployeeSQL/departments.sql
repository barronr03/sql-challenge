SELECT * FROM dept_emp

DROP TABLE dept_emp

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
    dept_no	varchar NOT NULL
);


CREATE TABLE dept_manager (
	dept_no	varchar NOT NULL,
	emp_no INT NOT NULL
);

DROP TABLE dept_manager

SELECT * FROM dept_manager

CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR (10) NOT NULL,
	birth_date DATE,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE
);

SELECT * FROM employees

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL
);

SELECT * FROM salaries


CREATE TABLE titles (
	title_id VARCHAR (10) NOT NULL,
	title VARCHAR NOT NULL
);

SELECT * FROM titles

