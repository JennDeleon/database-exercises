USE jennifer;

SELECT CONCAT(first_name, ' ', last_name) as full_name
# CHANGED THE ABOVE * BC ITS NOT IN GOOD PRACTICE TO ALWAYS USE *
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no desc;

SELECT *
FROM employees
WHERE month(birth_date) = 12
AND day(birth_date) = 25
AND year(hire_date) BETWEEN 1990 AND 1999
ORDER BY year(hire_date) DESC
LIMIT 1;

# CONCAT LOWER FUNCTION WITH ^^^ THAT FUNCTION
# SELECT *
# FROM employees
# WHERE year(hire_date) BETWEEN 1990 AND 1999
# AND month(birth_date) = 12
# AND day(birth_date) = 25
# ORDER BY year(hire_date) DESC
# LIMIT 1;

SELECT  CONCAT(first_name, ' ', last_name) AS 'Full Name',
DATEDIFF(curdate(), hire_date) AS 'days_ working'
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
AND month(birth_date) = 12
AND day(birth_date) = 25
ORDER BY DATEDIFF(curdate(), hire_date);