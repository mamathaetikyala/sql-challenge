-- Data Analysis

-- List the employee number, last name, first name, sex, and salary of each employee.
select emp.emp_no, emp.last_name, emp.first_name, emp.sex,sal.salary 
from employees emp
JOIN salaries sal ON emp.emp_no = sal.emp_no;

-- List the first name, last name, and hire date for the employees who were hired in 1986.
select first_name, last_name, hire_date
from employees
where hire_date BETWEEN '19860101' AND '19861231';


-- List the manager of each department along with their department number, department name, employee number, last name, and first name.
select dept_man.dept_no, dept_man.emp_no, deptes.dept_name, empl.last_name, empl.first_name
from dept_manager dept_man
JOIN employees empl
ON dept_man.emp_no = empl.emp_no
JOIN departments deptes
ON dept_man.dept_no = deptes.dept_no;

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
select dept_e.emp_no, dept_e.dept_no, empl.last_name, empl.first_name, deptes.dept_name
from dept_emp dept_e
JOIN employees empl
ON dept_e.emp_no = empl.emp_no
JOIN departments deptes
ON dept_e.dept_no = deptes.dept_no;


-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name LIKE 'B%';

-- List each employee in the Sales department, including their employee number, last name, and first name.
select depemp.emp_no,  emp.last_name, emp.first_name
from departments depts
JOIN dept_emp depemp
ON depemp.dept_no = depts.dept_no
JOIN employees emp
ON depemp.emp_no = emp.emp_no
where dept_name = 'Sales';


-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
select depemp.emp_no, emp.last_name, emp.first_name, depts.dept_name
from departments depts
JOIN dept_emp depemp
ON depemp.dept_no = depts.dept_no
JOIN employees emp
ON depemp.emp_no = emp.emp_no
where dept_name = 'Sales' or dept_name =  'Development';


-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
select last_name, count(emp_no) AS "Total Employees"
from employees
group by last_name
order by "Total Employees" desc;




