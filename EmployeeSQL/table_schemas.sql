CREATE TABLE titles (
	title_id VARCHAR (10) NOT NULL PRIMARY KEY,
	title VARCHAR NOT NULL
);

SELECT * FROM titles

CREATE TABLE employees (
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR (10) NOT NULL,
	birth_date DATE,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE,
	FOREIGN KEY (emp_title_id ) REFERENCES titles(title_id)
);

SELECT * FROM employees

CREATE TABLE salaries (
	salary_id SERIAL PRIMARY KEY,
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salaries

CREATE TABLE departments (
	dept_no	varchar NOT NULL PRIMARY KEY,
    dept_name varchar NOT NULL
);

SELECT * FROM departments

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
    dept_no	varchar NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

SELECT * FROM dept_emp

CREATE TABLE dept_manager (
	dept_no	varchar NOT NULL,
	emp_no INT NOT NULL,
	PRIMARY KEY (dept_no, emp_no)
);


SELECT * FROM dept_manager
