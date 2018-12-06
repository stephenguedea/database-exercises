USE employees;


SHOW TABLES;
select * from titles;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Manager Name'
FROM employees as e
JOIN titles as t
ON t.emp_no = e.emp_no
JOIN dept_manager as dm
ON dm.emp_no = t.emp_no
JOIN departments as d
ON d.dept_no = dm.dept_no
WHERE t.to_date BETWEEN NOW() and '9999-01-01'
AND t.title = 'Manager';

-- justin's way
SELECT d.dept_name as 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Manager Name'
FROM departments as d
JOIN dept_manager as dm
ON dm.dept_no = d.dept_no
JOIN employees as e
on e.emp_no = dm.emp_no
WHERE dm.to_date > NOW()
ORDER BY `Department Name`;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Manager Name'
FROM employees as e
JOIN titles as t
ON t.emp_no = e.emp_no
JOIN dept_manager as dm
ON dm.emp_no = t.emp_no
JOIN departments as d
ON d.dept_no = dm.dept_no
WHERE t.to_date = '9999-01-01'
AND t.title = 'Manager'
AND e.gender = 'F';


select t.title as 'title', COUNT(*) as 'count', d.dept_name as department
from employees as e
join titles as t
on t.emp_no = e.emp_no
join dept_emp as de
on de.emp_no = t.emp_no
join departments as d
on d.dept_no = de.dept_no
where d.dept_name = 'customer service' AND t.to_date > NOW()
group by t.title;


SELECT d.dept_name as 'Department Name', CONCAT(e.first_name, ' ', e.last_name) as 'Name', s.salary as 'Salary'
from employees as e
JOIN titles as t
ON t.emp_no = e.emp_no
JOIN dept_manager as dm
ON dm.emp_no = t.emp_no
JOIN departments as d
ON d.dept_no = dm.dept_no
JOIN salaries as s
ON s.emp_no = dm.emp_no
WHERE t.to_date BETWEEN NOW() and '9999-01-01'
AND s.to_date > NOW()
AND t.title = 'Manager';

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) as 'Name', s.salary AS 'Salary'
from departments as d
JOIN dept_manager as dm
ON dm.dept_no = d.dept_no
JOIN employees as e
ON e.emp_no = dm.emp_no
JOIN salaries as s
ON s.emp_no = e.emp_no
WHERE dm.to_date > NOW()
AND s.to_date > NOW()
ORDER BY `Department Name`;

SELECT CONCAT(e.first_name, ' ', e.last_name) as 'Employee Name', d.dept_name as 'Department Name', CONCAT(e.first_name, ' ', e.last_name) as 'Manager Name'
from departments as d
JOIN dept_manager as dm
ON dm.dept_no = d.dept_no
JOIN dept_emp as de
ON de.dept_no = dm.dept_no
JOIN employees as e
on e.emp_no = de.emp_no
WHERE de.to_date > NOW()
order by `Department Name`;

select concat(e.first_name, ' ', e.last_name) as 'Employee', d.dept_name as 'Department Name', concat(em.first_name, ' ', em.last_name) AS 'Manager Name'
from employees as e
JOIN dept_emp as de
ON de.emp_no = e.emp_no
JOIN departments as d
ON d.dept_no = de.dept_no
JOIN dept_manager as dm
ON dm.dept_no = d.dept_no
JOIN employees as em
ON em.emp_no = dm.emp_no
where de.to_date > NOW()
and dm.to_date > NOW()
order by `Department Name`;