USE employees;

# Copy the order_by_exercises.sql script and save it as functions_exercises.sql.

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;

# Update your queries for employees whose names start and end with 'E'.
# Use concat() to combine their first and last name
# together as a single column in your results.

SELECT CONCAT(first_name,' ', last_name) AS 'Full Name'
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY last_name ASC;

# or
SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%e'

