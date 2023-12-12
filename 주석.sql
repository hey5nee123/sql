COMMIT;

UPDATE employees
SET    salary = 99999
WHERE  employee_id = 176;

SELECT *
FROM employees
ORDER BY 1;

ROLLBACK;

SELECT  *
FROM    employees
WHERE   employee_id = 176;

COMMIT;

TRUNCATE TABLE aa;

SELECT table_name
FROm user_tables;
/*객체*/

SELECT DISTINCT object_type
FROM    user_objects;

/*SEQUENCE 보여줌*/

SELECT *
FROM user_catalog;

/*T 생성*/
/*아무것도 안 넣으면 sys로 하겠다*/
CREATE TABLE hire_dates
        (id           NUMBER(8),
        hire_date DATE DEFAULT SYSDATE);
        
INSERT INTO hire_dates(id)
VALUES (35);

SELECT *
FROM hire_dates;

INSERT INTO hire_dates
VALUES (45,NULL);


COMMIT;


SELECT  *
FROM    employees
WHERE   employee_id = 176;
/*누가 해당하는 행을 작업하는 중이라 다른 사람은 작업 불가*/
UPDATE employees
SET    salary = 77777
WHERE  employee_id = 176;

COMMIT;

ROLLBACK;

/*DML문만 가능*/

CREATE TABLE dept
        (deptno         NUMBER(2),
         dbane          VARCHAR2(14),
         loc            VARCHAR2(13),
        create_date     DATE DEFAULT SYSDATE);
 
 
/*user_tables가 관리함*/       
SELECT table_name
FROM user_tables;

/*서브쿼리로 T 생성*/
CREATE TABLE    dept80
    AS
        SELECT employee_id, last_name,
               salary*12 ANNSAL,
               hire_date
        FROM   employees
        WHERE  department_id = 80;
        
SELECT  *
FROM    dept80;

/*ADD*/
ALTER TABLE dept80
ADD         (job_id VARCHAR2(9));

SELECT  *
FROM    dept80;

/*default 값 지정해주면 기존 data도 바뀜*/
ALTER TABLE  dept80
ADD         (hdate DATE DEFAULT SYSDATE);

SELECT  *
FROM    dept80;
/*modify (수정)*/

ALTER TABLE dept80
MODIFY      (last_name VARCHAR2(30));

ALTER TABLE dept80
MODIFY      (last_name VARCHAR2(10));

/*기존의 데이터 값이 5보다 커서(데이터 값 제일 큰 거까지는 ㄱㄴ) 증가는 제약 x~*/
ALTER TABLE  dept80
MODIFY      (last_name VARCHAR2(5));

ALTER TABLE dept80
MODIFY (job_id NUMBER(10));

--' modified must be empty to change datatype'
ALTER TABLE dept80
MODIFY (last_name NUMBER(15));

--DROP

ALTER TABLE dept80
DROP (job_id);

ALTER TABLE dept80
SET UNUSED (last_name);

ALTER TABLE succeeded

ALTER TABLE dept80
DROP UNUSED COLUMNS;

ALTER TABLE succeeded

DROP TABLE dept80;

DROP TABLE yd_3;

SELECT object_name, original_name, type
FROM user_recyclebin;

FLASHBACK TABLE yd_3 TO BEFORE DROP;

SELECT *
FROM dept80;
/*DROP TABLE 자동 COMMIT*/
/*table 삭제시 view synonym은 살아있지만 사용불가 index는 살아있음*/

DROP TABLE dept80 PURGE;

/*T 이름 바꾸기*/

RENAME dept TO dept80;

SELECT *
FROM dept80;

/*데이터 다 날아감*/

TRUNCATE TABLE dept80;

ALL_COL_COMMENTS


        










