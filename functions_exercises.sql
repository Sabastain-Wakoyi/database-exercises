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
WHERE last_name LIKE 'E%e';

# Find all employees born on Christmas — 842 rows.
SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE birth_date LIKE '%12-25';

# Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE birth_date LIKE '%12-25'
AND YEAR (hire_date) LIKE '199%';

# Change the query for employees hired in the 90s and
# born on Christmas such that the first result is
# the oldest employee who was hired last.
# It should be Khun Bernini.

SELECT *
FROM employees
WHERE DAY (birth_date) = 25
AND MONTH (birth_date ) = 12
AND YEAR (hire_date) LIKE '199%'
  ORDER BY hire_date DESC;

# For your query of employees born on Christmas and hired in the 90s,
# use datediff() to find how many days they have been working at the company
# (Hint: You might also need to use now() or curdate()).

SELECT CONCAT(first_name, ' ', last_name), DATEDIFF(CURRENT_DATE(), hire_date)
FROM employees
WHERE DAY (birth_date) = 25
AND MONTH (birth_date ) = 12
AND YEAR (hire_date) LIKE '199%'
  ORDER BY hire_date DESC;

