SELECT *
FROM employees
WHERE (first_name = 'Maya' OR first_name = 'Irena' OR first_name = 'Vidya') AND gender = 'M';

SELECT *
FROM employees
WHERE last_name LIKE 'E%'
OR last_name LIKE '%E';;

SELECT * FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE  '%qu%';
