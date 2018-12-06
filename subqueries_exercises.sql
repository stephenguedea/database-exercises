USE employees;


SHOW TABLES;

select * from employees
where hire_date IN ( SELECT HIRE_DATE FROM
employees where emp_no = '101010');

select * from titles
where emp_no IN ( select emp_no
from employees
where first_name = 'Aamod');

select first_name, last_name from employees
where emp_no IN (
select emp_no from dept_manager
where to_date > now()
)
and gender = 'f';

select dept_name from departments
where dept_no IN (
select dept_no from dept_manager
where to_date > now()
and emp_no IN (
select emp_no from employees
where gender = 'f'
)
);

select first_name, last_name from employees
where emp_no IN (
select emp_no from salaries
where salary IN (
select Max(salary) from salaries
)
);

