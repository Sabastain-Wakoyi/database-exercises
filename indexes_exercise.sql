USE employees;

-- USE your employees database

-- DESCRIBE each table and inspect the keys and see which columns have indexes and keys
SHOW INDEXES FROM salaries;

DROP INDEX salary_index ON salaries;

SHOW TABLES;

SHOW INDEXES FROM departments;

DESCRIBE departments;

SELECT * FROM departments;

DESCRIBE dept_emp;

DESCRIBE dept_manager;

DESCRIBE employees;

DESCRIBE salaries;

DESCRIBE titles;

SELECT * FROM titles;
