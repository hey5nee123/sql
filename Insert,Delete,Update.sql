SELECT last_name, job_id,salary
FROM employees
WHERE salary = 
                (SELECT MIN(salary)
                FROM employees);
                
SELECT department_id, MIN(salary)
FROM employees
GROUP BY department_id
HAVING MIN(salary) >
                    (SELECT MIN(salary)
                    FROM employees
                    WHERE department_id = 50);

/*다중행*/
--<ANY ; 서브쿼리값중젤큰값보다 작은거
-->ANY :서브쿼리값중젤작은값보다큰거 출력
--<ALL :서브쿼리값중 젤작은값보다 작은거
-->ALL:서브쿼리값중 젤큰거보다 큰거


SELECT employee_id, last_name, job_id,salary
FROM employees
WHERE salary <ANY 
                 (SELECT salary
                 FROM employees
                 WHERE job_id = 'IT_PROG')
AND  job_id <> 'IT PROG';


SELECT employee_id, last_name, job_id,salary
FROM employees
WHERE salary <ALL
                 (SELECT salary
                 FROM employees
                 WHERE job_id = 'IT_PROG')
AND  job_id <> 'IT PROG';

/*다중열 서브쿼리 (묶음)*/
/*쌍*/
SELECT      employee_id,manager_id, department_id
FROM        empl_demo
WHERE       (manager_id, department_id) IN
                        (SELECT manager_id, department_id
                         FROM   empl_demo
                         WHERE  first_name ='John')
AND         first_name <> 'John'
ORDER BY    1 ;

/*비쌍비교*/
SELECT      employee_id,manager_id, department_id
FROM        empl_demo
WHERE       (manager_id ) IN (SELECT manager_id
                              FROM   empl_demo
                              WHERE  first_name = 'John')
AND         (department_id) IN (SELECT department_id
                              FROM   empl_demo
                              WHERE  first_name ='John')
AND         first_name <> 'John';


INSERT INTO departments(department_id,
            department_name,manager_id,location_id)
VALUES      (370,'public Relations', 100,1700);
/*모든 컬럼에 데이터를 입력할 떄는 () 없애기 가능*/
INSERT INTO departments
VALUES      (371,'public Relations', 100,1700);

SELECT      *
FROM        departments;

/*특정 col에만 데이터 입력하고 싶다!
면 입력할 col 싹다 입력!*/

INSERT INTO departments (department_id,
                         department_name)
VALUES     (330, 'purchasing');

SELECT      *
FROM        departments;
/*입력 안된 부분은 null >암시적으로 null*/

/*명시적으로 NULL 입력*/
INSERT INTO departments
VALUES      (400, 'Finance', NULL, NULL);

SELECT      *
FROM        departments;

SELECT      *
FROM        employees
ORDER BY    employee_id;

INSERT INTO employees
VALUES      (113,
            'Louise', 'Popp',
            'LPOPP','515.124.4567',
            SYSDATE, 'AC_ACCOUNT', 6900,
            NULL,205,110);
            
/*hr~ 설치하기 */   

SELECT      *
FROM        employees
ORDER BY    1;

INSERT INTO employees
VALUES      (114,'Den', 'Raphealy','DRAPHEAL','515.127.4561',
            TO_DATE('FEB 3,1999', 'MON DD, YYYY'),
            'SA_REP', 11000,0.2,100,60);
ROLLBACK;
/*롤백하기*/

/*''공백없이 따닥이는 NULL*/
INSERT INTO departments
VALUES      (100, 'Finance', '','');

SELECT *
FROM departments;

/*치환변수*/
INSERT INTO departments
            (department_id, department_name,location_id)
VALUES      (&department_id, '&department_name',&locauton);

SELECT  *
FROm    sales_reps;

SELECT *
FROM copy_emp;

INSERT INTO sales_reps
    SELECT employee_id, last_name,salary,commission_pct
    FROM employees
    WHERE job_id LIKE '%REP%';
    
    
INSERT INTO copy_emp
    SELECT *
    FROM employees;
    
SELECT *
FROM copy_emp;

/*department_id primary key라서 꼭 넣어야 함*/

INSERT INTO departments (department_name)
VALUES ('Yedam');
/*10번 부서가 있어서 X (unique 해야 함)*/

INSERT INTO departments (department_id,department_name)
VALUES (10,'Yedam');

/*OK*/
INSERT INTO departments (department_id,department_name)
VALUES (120,'Yedam');

SELECT *
FROM departments
ORDER BY 1;

/*name에 null 불가능*/
INSERT INTO departments (department_id)
VALUES (130);
/*manager_id 가 foreign key 여기에는 employee table에 있는 값만 ㄱㄴ 없는 값은 불가능*/
INSERT INTO departments (department_id,department_name,manager_id)
VALUES (130,'yd',100);

/*update*/
/*employee table로부터 department_id를 50으로 수정하겠다. employee_id 가 113번인 사람만!*/
UPDATE employees
SET department_id = 50
WHERE employee_id = 113;

SELECT *
FROM employees
ORDER BY 1;

UPDATE copy_emp
SET    department_id =110;

SELECT *
FROM copy_emp;


UPDATE employees
SET job_id = 'IT PROG', commission_pct = NULL
WHERE employee_id = 114;

ROLLBACK;

SELECT *
FROM copy_emp;

/*delete*/

DELETE employees;

SELECT *
FROM employees;


INSERT INTO copy_emp
    SELECT *
    FROM employees;

SELECT *
FROM copy_emp;
/*데이터베이스에 영구적으로 반영하겠다*/
COMMIT;

DELETE copy_emp;

ROLLBACK;

SELECT *
FROM copy_emp;

/*department t에서 d의 name Fianace인 것을 삭제하겠다1*/
DELETE FROM departments
WHERE department_name = 'Finance';

DELETE FROM departments
WHERE department_id In (30,40);

SELECT *
FROM departments
ORDER BY 1;

ROLLBACK;

SELECT *
FROM copy_emp;

DELETE copy_emp;

SELECT *
FROM copy_emp;

ROLLBACK;
/* 이거로 지워버리면 롤백 해도 복구 불가능! > 조심해!*/
TRUNCATE TABLE copy_emp;

SELECT *
FROM copy_emp;

ROLLBACK;

SELECT *
FROM copy_emp;