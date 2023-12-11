/*1*/
SELECT last_name, salary
FROM employees
WHERE salary > 12000;
/*2*/
SELECT last_name, department_id
FROM employees
WHERE employee_id = 176; /* WHERE employee_id IN (176);*/
/*3*/
SELECT last_name, salary
FROM employees
WHERE salary NOT BETWEEN 5000 AND 12000;
/*6*/
SELECT last_name "Employee", salary " Monthly Salary"
FROM employees
WHERE salary  BETWEEN 5000 AND 12000
      AND department_id IN (20,50);
/*7*/
SELECT last_name, hire_date
FROM employees
WHERE hire_date LIKE '05%';
/*WHERE hire_date BETWEEN '14/01/01' AND '14/12/31';*/
/*8*/
SELECT  last_name,job_id
FROM employees
WHERE manager_id IS NULL;
/*10*/
SELECT last_name
FROM employees
WHERE last_name LIKE '__a%';
/*11*/
SELECT last_name
FROM employees
WHERE last_name LIKe '%a%'
    AND last_name LIKe '%e%';
/*12*/
SELECT last_name, job_id,salary
FROM employees
WHERE job_id IN ('SA_REP','ST_CLERK')
    AND salary NOT IN (2500,3500,7000);    
/*13*/
SELECT last_name,salary,commission_pct
FROM employees
WHERE commission_pct = 0.2;
    