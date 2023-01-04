--1. List the employee number, last name, first name, sex, and salary of each employee

SELECT employee.emp_no, employee.last_name, employee.first_name,
employee.sex, salaries.salary
FROM employee
JOIN salaries
ON employee.emp_no = salaries.emp_no;



--2. List the first name, last name, and hire date for the employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM employee
WHERE hire_date BETWEEN '1986-01-01' AND '1987-01-01';



--3. List the manager of each department along with their department number, department name, employee number, last name, and first name 
SELECT department_manager.emp_no, employee.first_name, employee.last_name, departments.dept_name, department_manager.dept_no 
FROM employee
JOIN department_manager
ON employee.emp_no = department_manager.emp_no
JOIN departments
ON departments.dept_no = department_manager.dept_no;



--4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name
SELECT department_employee.dept_no, employee.emp_no, employee.first_name, employee.last_name, departments.dept_name
FROM employee
JOIN department_employee ON employee.emp_no = department_employee.emp_no
JOIN departments ON departments.dept_no = department_employee.dept_no;



--5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
SELECT first_name, last_name, sex
FROM employee
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';



--6. List each employee in the Sales department, including their employee number, last name, and first name
SELECT employee.emp_no, employee.last_name, employee.first_name
FROM department_employee
JOIN employee ON department_employee.emp_no = employee.emp_no
JOIN departments ON department_employee.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';


--7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
SELECT employee.emp_no, employee.last_name, employee.first_name, departments.dept_name
FROM department_employee
JOIN employee ON department_employee.emp_no = employee.emp_no
JOIN departments ON department_employee.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development';



--8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
SELECT last_name, Count(last_name) AS "Frequency_Count"
FROM employee
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;



