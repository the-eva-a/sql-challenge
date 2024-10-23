-- Query 1: List employee number, last name, first name, sex, and salary
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
LEFT JOIN salaries ON employees.emp_no = salaries.emp_no;

-- Query 2: Employees hired in 1986
SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE employees.hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- Query 3: List managers of each department
SELECT dept_manager.emp_no, dept_manager.dept_no, departments.dept_name, employees.first_name, employees.last_name 
FROM dept_manager
LEFT JOIN departments ON dept_manager.dept_no = departments.dept_no
LEFT JOIN employees ON dept_manager.emp_no = employees.emp_no;

-- Query 4: List employees with their department number
SELECT dept_emp.dept_no, employees.emp_no, employees.first_name, employees.last_name
FROM dept_emp
LEFT JOIN employees ON dept_emp.emp_no = employees.emp_no;

-- Query 5: List employees whose first name is Hercules and last name starts with 'B'
SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE employees.first_name = 'Hercules'
AND employees.last_name ILIKE 'B%';

-- Query 6: List employees in the Sales department
SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
LEFT JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
LEFT JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';

-- Query 7: List employees in the Sales and Development departments
SELECT employees.first_name, employees.last_name, employees.sex, departments.dept_name
FROM employees
LEFT JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
LEFT JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales'
OR departments.dept_name = 'Development';

-- Query 8: Count employees by last name
SELECT last_name, count(last_name)
FROM employees
GROUP BY last_name
ORDER BY count(last_name) DESC;