
DROP TABLE departments;

--Create a Departments table
DROP TABLE departments;
CREATE TABLE departments (
    dept_no CHAR(4) PRIMARY KEY,
    dept_name VARCHAR(255) NOT NULL
);

--Create a dept_emp table
DROP TABLE dept_emp;
CREATE TABLE dept_emp (
    emp_no INT PRIMARY KEY,
    dept_no CHAR(4) NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

--Create a table for dept_manager
CREATE TABLE dept_manager (
    dept_no CHAR(4),
    emp_no INT,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

--Create a table for employees
CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR(10),
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
    birth_date DATE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    sex CHAR(1),
    hire_date DATE
);

--Create a salaries table
CREATE TABLE salaries (
    emp_no INT PRIMARY KEY,
    salary INT
);

--Create a titles table
CREATE TABLE titles (
    title_id VARCHAR(10) PRIMARY KEY,
    title VARCHAR(50)
);