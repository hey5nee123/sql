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
/*��ü*/

SELECT DISTINCT object_type
FROM    user_objects;

/*SEQUENCE ������*/

SELECT *
FROM user_catalog;

/*T ����*/
/*�ƹ��͵� �� ������ sys�� �ϰڴ�*/
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
/*���� �ش��ϴ� ���� �۾��ϴ� ���̶� �ٸ� ����� �۾� �Ұ�*/
UPDATE employees
SET    salary = 77777
WHERE  employee_id = 176;

COMMIT;

ROLLBACK;

/*DML���� ����*/

CREATE TABLE dept
        (deptno         NUMBER(2),
         dbane          VARCHAR2(14),
         loc            VARCHAR2(13),
        create_date     DATE DEFAULT SYSDATE);
 
 
/*user_tables�� ������*/       
SELECT table_name
FROM user_tables;

/*���������� T ����*/
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

/*default �� �������ָ� ���� data�� �ٲ�*/
ALTER TABLE  dept80
ADD         (hdate DATE DEFAULT SYSDATE);

SELECT  *
FROM    dept80;
/*modify (����)*/

ALTER TABLE dept80
MODIFY      (last_name VARCHAR2(30));

ALTER TABLE dept80
MODIFY      (last_name VARCHAR2(10));

/*������ ������ ���� 5���� Ŀ��(������ �� ���� ū �ű����� ����) ������ ���� x~*/
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
/*DROP TABLE �ڵ� COMMIT*/
/*table ������ view synonym�� ��������� ���Ұ� index�� �������*/

DROP TABLE dept80 PURGE;

/*T �̸� �ٲٱ�*/

RENAME dept TO dept80;

SELECT *
FROM dept80;

/*������ �� ���ư�*/

TRUNCATE TABLE dept80;

ALL_COL_COMMENTS


        










