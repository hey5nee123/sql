1. LOCATIONS 및 COUNTRIES 테이블을 사용하여 모든 부서의 주소를 생성하는 query를 작성하시오. 
출력에 위치ID(location_id), 주소(street_address), 구/군(city), 시/도(state_province) 및 국가(country_name)를 표시하시오.

DESC LOCATIONS;
DESC COUNTRIES;

SELECT  l.location_id,l.street_address,l.city,l.state_province,c.country_name/*,c.country_id,l.country_id*/
FROM    locations l, countries c
WHERE   c.country_id = l.country_id;

ANSI 

SELECT  l.location_id,l.street_address,l.city,l.state_province,c.country_name/*,c.country_id,l.country_id*/
FROM    locations l, countries c
                ON   c.country_id = l.country_id;



2. 모든 사원의 이름, 소속 부서번호 및 부서 이름을 표시하는 query를 작성하시오.
SELECT  e.last_name,e.department_id,d.department_name "부서이름"/*,d.department_id*/
FROM    employees e, departments d
WHERE   e.department_id = d.department_id;

ANSI 
SELECT  e.last_name,e.department_id,d.department_name "부서이름"/*,d.department_id*/
FROM    employees e, departments d
WHERE   e.department_id JOIN d.department_id;
                


/*e.d_id가 폴인키*/

DESC employees;
DESC departments;

3. Toronto에 근무하는 사원에 대한 보고서를 필요로 합니다.
toronto에서 근무하는 모든 사원의 이름, 직무, 부서번호 및 부서 이름을 표시하시오.

SELECT  e.last_name,e.job_id,e.department_id,d.department_name
FROM    departments d, employees e,locations l
/*여기서*/
WHERE   d.department_id = e.department_id;
AND     l.location_id = d.location_id
/*여기까지가 조인조건*/
AND     LOWER(city) = 'Toronto';

4. 사원의 이름 및 사원 번호를 해당 관리자의 이름 및 관리자 번호와 함께 표시하는 보고서를 작성하는데, 
열 레이블을 각각 Employee, Emp#, Manager 및 Mgr#으로 지정하시오.

SELECT  w.last_name,w.employee_id,
        m.last_name,m.employee_id 
FROM    employees w, employees m
WHERE   w.manager_id = m.manager_id;

5. King과 같이 해당 관리자가 지정되지 않은 사원도 표시하도록 4번 문장을 수정합니다.
사원 번호순으로 결과를 정렬하시오. /*outer*/

SELECT      w.last_name,w.employee_id,
            m.last_name,m.employee_id 
FROM        employees w, employees m
WHERE       w.manager_id = m.manager_id(+)
ORDER BY    2;

6. 직무 등급 및 급여에 대한 보고서를 필요로 합니다. 
먼저 JOB_GRADES 테이블의 구조를 표시한 다음 모든 사원의 이름, 직무, 부서 이름, 급여 및 등급을 표시하는 query를 작성하시오.

SELECT  e.last_name,e.job_id,d.department_name,e.salary,j.grade_level
FROM    employees e, departments d,job_grades j
WHERE   e.department_id = d.department_id
AND     e.salary BETWEEN j.lowest_sal AND j.highest_sal;