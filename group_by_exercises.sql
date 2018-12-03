USE employees;

show tables;

SELECT DISTINCT TITLE FROM TITLES;

SELECT DISTINCT LAST_NAME FROM EMPLOYEES
WHERE LAST_NAME LIKE '%E' AND LAST_NAME LIKE 'E%'
ORDER BY LAST_NAME ASC;

SELECT DISTINCT FIRST_NAME, LAST_NAME FROM EMPLOYEES
WHERE LAST_NAME LIKE 'E%' AND LAST_NAME LIKE '%E'
ORDER BY LAST_NAME ASC;

SELECT DISTINCT LAST_NAME FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%';

SELECT DISTINCT LAST_NAME, COUNT(LAST_NAME) FROM EMPLOYEES
WHERE LAST_NAME LIKE '%Q%' AND LAST_NAME NOT LIKE '%QU%'
GROUP BY LAST_NAME ASC;

SELECT GENDER, COUNT(*) FROM EMPLOYEES
WHERE FIRST_NAME = 'IRENA' OR FIRST_NAME = 'VIDYA' OR FIRST_NAME = 'MAYA'
GROUP BY GENDER;