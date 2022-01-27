USE employees;

# Create a new file
# called order_by_exercises.sql and copy and paste the contents
# of your where_exercises.sql.

# Modify your first query to order by first name.
# The first result should be Irena Pelz and the last result should be Vidya Awdeh.

SELECT * FROM employees
WHERE (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya')
ORDER BY first_name;