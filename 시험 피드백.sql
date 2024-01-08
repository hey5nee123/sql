
SELECT *
FROM tab;

SELECT *
FROM employees;

//1
SELECT  employee_id,last_name,salary,department_id
FROM    employees
WHERE   salary BETWEEN 7000 AND 12000
AND     UPPER(last_name) LIKE 'H%'; 

//2
SELECT employee_id,last_name,TO_CHAR(hire_date,'MM/dd/YYYY DAY'),TO_CHAR(salary*commission_pct,'$9,999.00')AS "suDang"
FROM employees
WHERE commission_pct IS NOT NULL
ORDER by 4 DESC;

//3
SELECT *
FROM employees;

SELECT employee_id,last_name,salary,department_id
FROM employees
WHERE department_id IN(50,60)
      AND salary > 5000;
//4
SELECT  employee_id,last_name,department_id,
        CASE department_id WHEN 20 THEN 'Canada'
                       WHEN 80 THEN 'UK'
                        ELSE 'USA'
                        END LOCATION
FROM    employees
WHERE   department_id IS NOT NULL;  

//5
SELECT  e.employee_id,e.last_name,e.department_id,d.department_name
FROM    employees e, departments d
WHERE   e.department_id = d.department_id(+);

//6
SELECT last_name,hire_date,
    CASE WhEN hire_date >=  TO_DATE('05/01/01','YY/MM/DD')
              THEN 'New employee'
              ELSE 'Career employee'
        END EMP_TYPE
FROM    employees
WHERE   employee_id = &employee_num;


SELECT last_name,hire_date,
    CASE WhEN hire_date >=  '05/01/01'
              THEN 'New employee'
              ELSE 'Career employee'
        END EMP_TYPE
FROM    employees
WHERE   employee_id = &employee_num;

SELECT *
FROM employees;

//7
SELECT last_name,salary,
    CASE WHEN salary <= 5000    THEN salary*1.2
         WHEN salary <= 10000   THEN salary*1.15
         WHEN salary <= 15000   THEN salary*1.1
                        ELSE    salary
         END  "increased_salary"
FROM     employees
WHERE    employee_id = &employee_num;
        
SELECT	last_name, salary,
       CASE WHEN salary <= 5000  THEN salary*1.2
              WHEN salary <= 10000 THEN salary*1.15
              WHEN salary <= 15000 THEN salary*1.1
                                 ELSE salary
       END "Increased_Salary"
FROM	employees
WHERE	employee_id = &employee_num;

//8
DESC departments;
DESC locations;

SELECT  d.department_id,d.department_name,l.city
FROM    departments d, locations l
WHERE   d.location_id = l.location_id;

//9
SELECT  employee_id,last_name,job_id
FROM    employees
WHERE department_id = (SELECT department_id
                       FROM   departments
                       WHERE  UPPER(Department_NAME)='UPPER(it)');
                       
//10
SELECT department_id,COUNT(employee_id),TRUNC(AVG(salary))
FROM employees
GROUP By department_id;
                       

