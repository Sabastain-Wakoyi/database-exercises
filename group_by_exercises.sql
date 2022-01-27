USE employees;

# In your script, use DISTINCT to find the unique titles in the titles table. Your results should look like:
# Senior Engineer
# Staff
# Engineer
# Senior Staff
# Assistant Engineer
# Technique Leader
# Manager

SELECT DISTINCT title FROM titles;

# Find your query for employees whose last names start and end with 'E'.
# Update the query to find just the unique last names that start and end with 'E' using GROUP BY. The results should be:
# Eldridge
# Erbe
# Erde
# Erie
# Etalle

SELECT last_name
FROM employees
WHERE last_name like 'E%e'
GROUP BY last_name;