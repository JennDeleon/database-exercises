USE jennifer;

SELECT DISTINCT title FROM titles;

SELECT last_name
FROM employees
WHERE last_name
LIKE 'e%'
AND last_name
LIKE '%e'
GROUP BY last_name;

SELECT last_name, first_name
FROM employees
WHERE last_name
LIKE 'e%'
AND last_name LIKE '%e'
GROUP BY last_name, first_name;

SELECT count(last_name), last_name
FROM employees
WHERE last_name LIKE '%q%'
AND employees.last_name
NOT LIKE '%qu%'
GROUP BY last_name;

SELECT count(gender), gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;