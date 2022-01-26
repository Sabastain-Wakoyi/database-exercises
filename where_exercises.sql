USE employees;

-- Create a file named where_exercises.sql.
-- Make sure to use the employees database before you begin.
--             Part 1

-- Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

