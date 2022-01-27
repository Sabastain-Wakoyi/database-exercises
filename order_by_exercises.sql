USE employees;

# Create a new file
# called order_by_exercises.sql and copy and paste the contents
# of your where_exercises.sql.

# Modify your first query to order by first name.
# The first result should be Irena Pelz and the last result should be Vidya Awdeh.


# SELECT  first_name, last_name
# FROM employees
# WHERE first_name IN ('Irena', 'Vidya', 'Maya')
# ORDER BY first_name;


SELECT * FROM employees
WHERE GENDER = 'M'
   AND   (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya')
ORDER BY first_name;

#instructor's solution
SELECT  * FROM employees
WHERE first_name
IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, emp_no DESC;

# Update the query to order by first name and then last name.
# The first result should now be Irena Acton and
# the last should be Vidya Zweizig.

SELECT * FROM employees
WHERE ((first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya')
    AND gender = 'M')
ORDER BY first_name, last_name;

# Change the ORDER BY clause so that you order by last name before first name.
# Your first result should still
# be Irena Acton but now the last result should be Maya Zyda

SELECT * FROM employees
WHERE ((first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya')
    AND gender = 'M')
ORDER BY last_name, first_name;

#Update your queries for employees with 'e' in their last name to sort the results by their employee number.
# Make sure the employee numbers are in the correct order.

SELECT * FROM employees
WHERE (last_name LIKE 'e%'
    OR last_name LIKE '%e')
ORDER BY emp_no;


SELECT * FROM employees
WHERE last_name LIKE 'e%e'
ORDER BY emp_no;

# Now reverse the sort order for both queries and compare results.

SELECT * FROM employees
WHERE (last_name LIKE 'e%'
    OR last_name LIKE '%e')
ORDER BY emp_no DESC;


SELECT * FROM employees
WHERE last_name LIKE 'e%e'
ORDER BY emp_no DESC;