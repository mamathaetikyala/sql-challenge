CREATE TABLE departments (
    dept_no varchar(4) NOT NULL,
    dept_name varchar   NOT NULL UNIQUE,
	PRIMARY KEY (dept_no)
);


CREATE TABLE titles (
    title_id varchar(5)   NOT NULL,
    title varchar   NOT NULL UNIQUE,
	PRIMARY KEY (title_id)
);


CREATE TABLE employees (
    emp_no int   NOT NULL,
    emp_title_id varchar(5)   NOT NULL REFERENCES titles (title_id),
    birth_date date   NOT NULL,
    first_name varchar   NOT NULL,
    last_name varchar   NOT NULL,
    sex varchar   NOT NULL,
    hire_date date   NOT NULL,
    PRIMARY KEY (emp_no)
	
);


CREATE TABLE salaries (
    emp_no int   NOT NULL PRIMARY KEY REFERENCES employees (emp_no),
    salary int   NOT NULL
);


CREATE TABLE dept_emp (
    emp_no int   NOT NULL REFERENCES employees (emp_no),
    dept_no varchar(4)   NOT NULL REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no,dept_no)
);


CREATE TABLE dept_manager (
    dept_no varchar(4)   NOT NULL REFERENCES departments (dept_no),
    emp_no int   NOT NULL REFERENCES employees (emp_no),
    PRIMARY KEY (dept_no,emp_no)
);



