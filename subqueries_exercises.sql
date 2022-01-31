USE employees;


-- Create a file named subqueries_exercises.sql and
-- craft queries to return the results for the following criteria:

-- Find all the employees with the same hire date as employee 101010 using a subquery.69 Rows

SELECT concat(first_name, ' ', last_name) AS Name
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = '101010');


-- Find all the titles held by all employees with the first name Aamod.
-- 314 total titles, 6 unique titles

SELECT title AS Titles, COUNT(*)
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = "Aamod")
GROUP BY title;

-- Find all the current department managers that are female.

SELECT CONCAT(first_name, ' ', last_name) AS `FEMALE MANAGERS`
FROM employees
WHERE gender = 'F' AND emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date > NOW());

-- Find all the department names that currently have female managers.

SELECT dept_name
FROM departments
WHERE dept_no IN (
    SELECT dept_no
    FROM dept_manager
    WHERE to_date > NOW() AND emp_no IN (
        SELECT emp_no
        FROM employees
        WHERE gender = 'F'
    )
);

-- Find the first and last name of the employee with the highest salary.

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM salaries
    WHERE salary IN (
        SELECT MAX(salary)
        FROM salaries
    )
);

SELECT * FROM salaries;
