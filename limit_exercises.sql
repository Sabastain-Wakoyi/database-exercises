USE employees;

SELECT * FROM employees;

# List the first 10 distinct last name sorted in descending order. Your result should look like this:

# Zykh
# Zyda
# Zwicker
# Zweizig
# Zumaque
# Zultner
# Zucker
# Zuberek
# Zschoche
# Zongker

SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;