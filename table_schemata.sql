departments
--
dept_no VARCHAR(10) FK >- dept_manager.dept_no
dept_name VARCHAR(20)

dept_emp
--
emp_no INT FK >- employees.emp_no
dept_no VARCHAR(10)
from_date DATE
to_date DATE

dept_manager
--
dept_no VARCHAR(10)
emp_no INT FK >- dept_emp.emp_no
from_date DATE
to_date DATE

employees
--
emp_no INT FK >- salaries.emp_no
birth_date DATE
first_name VARCHAR(20)
last_name VARCHAR(20)
gender CHAR
hire_date DATE

salaries
--
emp_no INT FK >- titles.emp_no
salary SERIAL
from_date DATE
to_date DATE

titles
--
emp_no INT
title VARCHAR(20)
from_date DATE
to_date DATE

