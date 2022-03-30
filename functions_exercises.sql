USE jennifer;

SELECT *
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY last_name;

SELECT *
FROM employees
WHERE month(birth_date) = 12
And day(birth_date) = 25;

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;

SELECT *
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no;

SELECT *
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
AND month(birth_date) = 12
AND day(birth_date) = 25;

SELECT *
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
AND month(birth_date) = 12
AND day(birth_date) = 25
ORDER BY year(hire_date) DESC
LIMIT 1;

SELECT  CONCAT(first_name, ' ', last_name) AS 'Full Name',
        DATEDIFF(curdate(), hire_date) AS 'Days With Company'
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
AND month(birth_date) = 12
AND day(birth_date) = 25
ORDER BY DATEDIFF(curdate(), hire_date);