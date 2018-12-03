USE employees;

show tables;

SELECT DISTINCT last_name FROM employees
ORDER BY last_name DESC LIMIT 10;

select first_name, last_name from employees
where hire_date LIKE '%199%'
AND birth_date LIKE '%12-25'
ORDER BY birth_date, hire_date DESC
LIMIT 5;

select first_name, last_name from employees
where hire_date LIKE '%199%'
AND birth_date LIKE '%12-25'
ORDER BY birth_date, hire_date DESC
LIMIT 5 OFFSET 45;

select first_name, last_name from employees
where hire_date LIKE '%199%'
AND birth_date LIKE '%12-25'
ORDER BY birth_date, hire_date DESC
LIMIT 5 OFFSET 45;
