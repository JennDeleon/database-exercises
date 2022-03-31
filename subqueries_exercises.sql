USE jennifer;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date IN (SELECT hire_date
    FROM employees
    WHERE emp_no = 101010);

SELECT first_name, last_name, title
FROM titles
         JOIN employees e on titles.emp_no = e.emp_no
WHERE title IN (SELECT title
    FROM titles
    WHERE first_name = 'Aamod');

SELECT first_name, last_name
FROM employees AS e
         JOIN dept_manager AS dm using(emp_no)
         JOIN departments AS d using(dept_no)
WHERE dm.to_date > NOW()
  AND dm.emp_no
    IN (SELECT dm.emp_no
    FROM dept_manager
    WHERE gender = 'F'
);

SELECT dept_name
FROM employees AS e
         JOIN dept_manager AS dm using(emp_no)
         JOIN departments AS d using(dept_no)
WHERE dm.to_date > NOW() AND dm.emp_no IN (
    SELECT dm.emp_no
    FROM dept_manager
    WHERE gender = 'F'
);

SELECT first_name, last_name
FROM employees AS e
         JOIN salaries s on e.emp_no = s.emp_no
order by salary DESC limit 1