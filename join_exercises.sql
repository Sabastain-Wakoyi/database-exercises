USE employees;

# Using the example in the Associative Table Joins section as a guide
SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
         JOIN dept_emp as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

# write a query that shows each department along with the name of the current manager for that department.

SELECT d.dept_name AS `Department Name`, CONCAT(e.first_name, ' ', e.last_name) AS `Department Manager`
FROM employees AS e
         JOIN dept_manager AS dm
              ON dm.emp_no = e.emp_no
         JOIN departments AS d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date > NOW()
ORDER BY `Department Name`;

# Find the name of all departments currently managed by women.

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
         JOIN dept_manager AS dm
              ON dm.emp_no = e.emp_no
         JOIN departments AS d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date > NOW() AND e.gender = 'F'
ORDER BY d.dept_name;


# Find the current titles of employees currently working in the Customer Service department.


SELECT employees.titles.title, count(employees.titles.title) as Total
FROM titles
         JOIN dept_emp
              ON dept_emp.emp_no = titles.emp_no
WHERE dept_emp.dept_no = 'd009'
  AND YEAR(titles.to_date) = '9999'
GROUP BY employees.titles.title
ORDER BY count(employees.titles.title) DESC;


# Find the current salary of all current managers.

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS Name, s.salary AS Salary
FROM departments AS d
         JOIN dept_manager AS dm
              ON dm.dept_no = d.dept_no
         JOIN salaries AS s
              ON s.emp_no = dm.emp_no
         JOIN employees AS e
              ON e.emp_no = dm.emp_no
WHERE dm.to_date > NOW() and s.to_date > NOW()
order by d.dept_name;

# Bonus Find the names of all current employees, their department name, and their current manager's name

SELECT CONCAT(e.first_name, ' ', e.last_name) AS `Employee Name`, d.dept_name AS `Department Name`
FROM departments AS d
         JOIN dept_emp AS de
              ON de.dept_no = d.dept_no
         JOIN dept_manager AS dm
              ON de.emp_no = dm.emp_no
         JOIN employees AS e
              ON dm.emp_no = e.emp_no;




