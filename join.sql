SELECT  employee_id,last_name,department_id
FROM    employees;

SELECT  count(*)
FROM    departments;

SELECT  last_name, department_name
FROM    employees,departments;
/*����*/
SELECT  e.employee_id, e.last_name,
        d.department_id, d.location_id,d.department_name
FROm    employees e, departments d
WHERE   e.department_id = d.department_id;

SELECT  e.employee_id, e.last_name, e.department_id,
        d.department_id, d.location_id,d.department_name
FROm    employees e, departments d
WHERE   e.department_id = d.department_id;

/*���̺� �̸��� ���ξ�� ���̴� �� ����!*/
SELECT  employee_id, last_name, e.department_id "emp",
        d.department_id "DEP", location_id,department_name
FROM    employees e, departments d
WHERE   e.department_id = d.department_id;

SELECT  d.department_id, d.department_name,
        d.location_id, l.city
FROM    departments d, locations l
WHERE   d.location_id = l.location_id;

/*�߰��� AND�� ���ָ� �ȴ�*/
SELECT  d.department_id, d.department_name,
        d.location_id, l.city
FROM    departments d, locations l
WHERE   d.location_id = l.location_id
        AND d.department_id IN (20,50);

SELECT *
FROM   job_grades;


SELECT  e.last_name, e.salary, j.grade_level
FROM    employees e, job_grades j
WHERE   e.salary
        BETWEEN j.lowest_sal AND j.highest_sal;
        
/*����� ���� �μ� (�ƿ��������� �������� �ȿ� ����)*/        
SELECT  e.last_name"�̸�", e.department_id "�μ���ȣ   ", d.department_name "�μ���"
FROM    employees e, departments d
WHERE   e.department_id(+) = d.department_id;


/*�μ��� ���� ���*/
SELECT  e.last_name"�̸�", e.department_id "�μ���ȣ   ", d.department_name "�μ���"
FROM    employees e, departments d
WHERE   e.department_id = d.department_id(+) ;

/*SELF JOIN*/

SELECT  worker.last_name || ' works for ' || manager.last_name
FROM    employees worker, employees manager
WHERE   worker.manager_id = manager.employee_id;

/*ANSI join*/
/*cross*/
SELECT  last_name, department_name
FROM    employees CROSS JOIN departments;

/*==*/
SELECT  last_name, department_name
FROM    employees ,departments;

/*natural*/
SELECT          department_id, department_name,location_id,city
FROM            departments
NATURAL JOIN    locations;

SELECT          department_id, department_name,city
FROM            departments
NATURAL JOIN    locations;

desc departments;
desc locations;

/*USING*/
SELECT  employee_id,last_name,location_id,department_id
FROM    employees JOIN departments
                       USING(department_id);
                       


/*���� where������ �˸�� ���̱� x*/
SELECT  l.city, d.department_name
FROM    locations l JOIN departments d
USING   (location_id)
WHERE   d.location_id = 1400;


SELECT  l.city, d.department_name
FROM    locations l JOIN departments d
USING   (location_id)
WHERE   location_id = 1400;

/*on��*/
SELECT e.employee_id,e.last_name, e.department_id
       d.department_id, d.location_id
FROM employees e JOIN departments d
ON         (e.department_id = d.department_id);

/*ANSIJOIN ver*/
SELECT employee_id, city, department_name
FROM employees e
    JOIN departments d
        ON d.department_id = e.department_id
    JOIN locations l
        ON d.location_id = l.location_id;
        
/*oracle join ����*/
SELECT  employee_id, city, department_name
FROM    employees e,departments d,locations l
WHERE   d.department_id = e.department_id
AND     d.location_id = l.location_id;

/*outer*/
SELECT  e.last_name,e.department_id,d.department_name
FROM    employees e LEFT OUTER JOIN departments d
        ON (e.department_id = d.department_id);
/*oracle*/        
SELECT e.last_name,e.department_id,d.department_name
FROM   employees e , departments d
WHERE  e.department_id = d.department_id(+);

SELECT  e.last_name,e.department_id,d.department_name
FROM    employees e RIGHT OUTER JOIN departments d
        ON (e.department_id = d.department_id);
  
SELECT e.last_name,e.department_id,d.department_name
FROM   employees e , departments d
WHERE  e.department_id(+) = d.department_id;
/*FULL*/
SELECT  e.last_name,e.department_id,d.department_name
FROM    employees e FULL OUTER JOIN departments d
        ON (e.department_id = d.department_id);
        
SELECT e.last_name,e.department_id,d.department_name
FROM   employees e , departments d
WHERE  e.department_id(+) = d.department_id(+);

/*�߰� ����(AND || AND)*/
SELECT  e.last_name,e.department_id,d.department_name
FROM    employees e JOIN departments d
        ON (e.department_id = d.department_id)
AND     e.manager_id = 149;
       




