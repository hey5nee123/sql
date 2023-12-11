SELECT  employee_id,last_name,department_id
FROM    employees;

SELECT  count(*)
FROM    departments;

SELECT  last_name, department_name
FROM    employees,departments;
/*조인*/
SELECT  e.employee_id, e.last_name,
        d.department_id, d.location_id,d.department_name
FROm    employees e, departments d
WHERE   e.department_id = d.department_id;

SELECT  e.employee_id, e.last_name, e.department_id,
        d.department_id, d.location_id,d.department_name
FROm    employees e, departments d
WHERE   e.department_id = d.department_id;

/*테이블 이름을 접두어로 붙이는 게 낫다!*/
SELECT  employee_id, last_name, e.department_id "emp",
        d.department_id "DEP", location_id,department_name
FROM    employees e, departments d
WHERE   e.department_id = d.department_id;

SELECT  d.department_id, d.department_name,
        d.location_id, l.city
FROM    departments d, locations l
WHERE   d.location_id = l.location_id;

/*추가는 AND만 해주면 된다*/
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
        
/*사원이 없는 부서 (아우터조인은 동등조인 안에 있음)*/        
SELECT  e.last_name"이름", e.department_id "부서번호   ", d.department_name "부서명"
FROM    employees e, departments d
WHERE   e.department_id(+) = d.department_id;


/*부서가 없는 사원*/
SELECT  e.last_name"이름", e.department_id "부서번호   ", d.department_name "부서명"
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
                       


/*오류 where절에도 알리어스 붙이기 x*/
SELECT  l.city, d.department_name
FROM    locations l JOIN departments d
USING   (location_id)
WHERE   d.location_id = 1400;


SELECT  l.city, d.department_name
FROM    locations l JOIN departments d
USING   (location_id)
WHERE   location_id = 1400;

/*on절*/
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
        
/*oracle join 버전*/
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

/*추가 조건(AND || AND)*/
SELECT  e.last_name,e.department_id,d.department_name
FROM    employees e JOIN departments d
        ON (e.department_id = d.department_id)
AND     e.manager_id = 149;
       




