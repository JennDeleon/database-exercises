use jennifer;

SELECT * FROM departments;
SELECT * FROM dept_manager;

SELECT d.dept_name AS Department, CONCAT(emp.first_name, ' ', emp.last_name) AS Department_Manager
FROM employees AS emp
         JOIN dept_manager AS dm ON dm.emp_no = emp.emp_no
         JOIN departments AS d ON d.dept_no = dm.dept_no
WHERE dm.to_date >= now()
ORDER BY d.dept_name;

SELECT d.dept_name AS Department, CONCAT(emp.first_name, ' ', emp.last_name) AS Department_Manager
FROM employees AS emp
         JOIN dept_manager AS dm ON dm.emp_no = emp.emp_no
         JOIN departments AS d ON d.dept_no = dm.dept_no
WHERE emp.gender = 'f' AND dm.to_date >= now()
ORDER BY d.dept_name;

SELECT t.title AS title, COUNT(e.emp_no) AS total
FROM titles AS t
         JOIN employees AS e ON e.emp_no = t.emp_no
         JOIN dept_emp AS de ON de.emp_no = e.emp_no
         JOIN departments AS d ON d.dept_no = de.dept_no
WHERE dept_name = 'Customer Service' AND t.to_date >= now() AND de.to_date >= now()
GROUP BY 1 ;

#instructor solution for above problem
SELECT t.title AS 'Title', COUNT(t.emp_no) AS 'Count'
FROM titles AS t
         JOIN dept_emp AS de ON t.emp_no = de.emp_no
         JOIN departments AS d ON de.dept_no = d.dept_no
WHERE t.to_date > curdate()
  AND d.dept_name = 'Customer Service'
  AND de.to_date > CURDATE()
GROUP BY title;


SELECT d.dept_name AS Department, CONCAT(emp.first_name, ' ', emp.last_name) AS Department_Manager, s.salary AS Salary
FROM employees AS emp
         JOIN dept_manager AS dm ON dm.emp_no = emp.emp_no
         JOIN departments AS d ON d.dept_no = dm.dept_no
         JOIN salaries AS s ON s.emp_no = emp.emp_no
WHERE s.to_date >= now() AND dm.to_date >= now()
ORDER BY d.dept_name;


SELECT e.first_name AS name, dm.emp_no AS employee_id, s.salary AS salary
FROM employees AS e
         JOIN dept_manager AS dm ON e.emp_no = dm.emp_no
         JOIN salaries s on e.emp_no = s.emp_no
WHERE s.to_date >= now();

SELECT CONCAT(e.first_name, ' ', e.last_name) AS employee, d.dept_name AS Department, dm.emp_no
FROM employees AS e
         JOIN dept_emp AS de ON de.emp_no = e.emp_no
         JOIN departments AS d ON d.dept_no = de.dept_no
         JOIN dept_manager AS dm ON dm.emp_no = e.emp_no;