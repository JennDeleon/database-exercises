USE jennifer;
# List the first 10 distinct last name sorted in descending order.
SELECT DISTINCT last_name
FROM employees
# WHERE last_name LIKE 'Z%'
# DONT DO THAT ^^ BC IF THERE ARE NO LAST NAMES THAT HAVE Z, NOTHING WILL DISPLAY
ORDER BY last_name DESC
LIMIT 10;

SELECT emp_no
FROM salaries
ORDER BY salary DESC
LIMIT 5;

SELECT emp_no
FROM salaries
ORDER BY salary desc
LIMIT 5 OFFSET 45;
