--List the employee number, last name, first name, sex, and salary of each employee 
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
INNER JOIN salaries s ON e.emp_no = s.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM Employees 
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

--List the manager of each department along with their department number, department name, employee number, last name, and first name
SELECT m.emp_no, m.dept_no, d.department_name, e.last_name, e.first_name
FROM dept_manager m
INNER JOIN departments d ON m.dept_no = d.dept_no
INNER JOIN employees e ON m.emp_no = e.emp_no;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name 
SELECT d.dept_no, d.department_name, p.emp_no, e.first_name, e.last_name
FROM dept_emp p
INNER JOIN employees e ON p.emp_no = e.emp_no
INNER JOIN departments d ON p.dept_no = d.dept_no;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
SELECT e.emp_no, e.first_name, e.last_name, e.sex
FROM employees e
WHERE e.first_name = 'Hercules'
AND e.last_name LIKE 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name
SELECT e.emp_no, e.last_name, e.first_name
FROM employees e
JOIN dept_emp p ON e.emp_no = p.emp_no
JOIN departments d ON p.dept_no = d.dept_no
WHERE d.department_name = 'Sales';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
SELECT e.emp_no, e.last_name, e.first_name, d.department_name
FROM employees e
JOIN dept_emp p ON e.emp_no = p.emp_no
JOIN departments d ON p.dept_no = d.dept_no
WHERE d.department_name IN ('Sales', 'Development');

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) 
SELECT last_name, COUNT(last_name) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;