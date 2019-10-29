--Question 1 Employee Detail List

SELECT employees.emp_no,
	employees.last_name,
	employees.first_name,
	employees.gender,
	salaries.salary
FROM employees
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no;


-- Question 2 Employees hired in 1986

SELECT emp_no,
	last_name,
	first_name
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986=12=31'


--Question 3 Dept Managers

SELECT departments.dept_no,
	departments.dept_name,
	employees.emp_no,
	employees.last_name,
	employees.first_name,
	employees.hire_date
FROM dept_manager
INNER JOIN departments
ON departments.dept_no = dept_manager.dept_no
INNER JOIN employees
ON dept_manager.emp_no = employees.emp_no;


--Question 4 Employee list with department information

SELECT departments.dept_no,
	departments.dept_name,
	employees.emp_no,
	employees.last_name,
	employees.first_name,
	employees.hire_date
FROM dept_emp
INNER JOIN departments
ON departments.dept_no = dept_emp.dept_no
INNER JOIN employees
ON dept_emp.emp_no = employees.emp_no;


--Question 5 Employees with first name Hercules and last name starting with B

SELECT emp_no,
	last_name,
	first_name
FROM employees
WHERE first_name='Hercules' AND LEFT(last_name,1)='B'


--Question 6 List employees in Sales Department

SELECT departments.dept_no,
	departments.dept_name,
	employees.emp_no,
	employees.last_name,
	employees.first_name,
	employees.hire_date
FROM dept_emp
INNER JOIN departments
ON departments.dept_no = dept_emp.dept_no
INNER JOIN employees
ON dept_emp.emp_no = employees.emp_no
WHERE dept_name='Sales';

--Question 7 Employess in Sales and Development Departments


SELECT departments.dept_no,
	departments.dept_name,
	employees.emp_no,
	employees.last_name,
	employees.first_name,
	employees.hire_date
FROM dept_emp
INNER JOIN departments
ON departments.dept_no = dept_emp.dept_no
INNER JOIN employees
ON dept_emp.emp_no = employees.emp_no
WHERE dept_name='Sales' OR dept_name='Development';

-- Question 8 Employees with the same last name

SELECT last_name,
	COUNT (*)
FROM employees
GROUP BY last_name;

