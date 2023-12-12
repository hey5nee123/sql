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

/*������*/
--<ANY ; ��������������ū������ ������
-->ANY :������������������������ū�� ���
--<ALL :������������ ������������ ������
-->ALL:������������ ��ū�ź��� ū��


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

/*���߿� �������� (����)*/
/*��*/
SELECT      employee_id,manager_id, department_id
FROM        empl_demo
WHERE       (manager_id, department_id) IN
                        (SELECT manager_id, department_id
                         FROM   empl_demo
                         WHERE  first_name ='John')
AND         first_name <> 'John'
ORDER BY    1 ;

/*��ֺ�*/
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
/*��� �÷��� �����͸� �Է��� ���� () ���ֱ� ����*/
INSERT INTO departments
VALUES      (371,'public Relations', 100,1700);

SELECT      *
FROM        departments;

/*Ư�� col���� ������ �Է��ϰ� �ʹ�!
�� �Է��� col �ϴ� �Է�!*/

INSERT INTO departments (department_id,
                         department_name)
VALUES     (330, 'purchasing');

SELECT      *
FROM        departments;
/*�Է� �ȵ� �κ��� null >�Ͻ������� null*/

/*��������� NULL �Է�*/
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
            
/*hr~ ��ġ�ϱ� */   

SELECT      *
FROM        employees
ORDER BY    1;

INSERT INTO employees
VALUES      (114,'Den', 'Raphealy','DRAPHEAL','515.127.4561',
            TO_DATE('FEB 3,1999', 'MON DD, YYYY'),
            'SA_REP', 11000,0.2,100,60);
ROLLBACK;
/*�ѹ��ϱ�*/

/*''������� �����̴� NULL*/
INSERT INTO departments
VALUES      (100, 'Finance', '','');

SELECT *
FROM departments;

/*ġȯ����*/
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

/*department_id primary key�� �� �־�� ��*/

INSERT INTO departments (department_name)
VALUES ('Yedam');
/*10�� �μ��� �־ X (unique �ؾ� ��)*/

INSERT INTO departments (department_id,department_name)
VALUES (10,'Yedam');

/*OK*/
INSERT INTO departments (department_id,department_name)
VALUES (120,'Yedam');

SELECT *
FROM departments
ORDER BY 1;

/*name�� null �Ұ���*/
INSERT INTO departments (department_id)
VALUES (130);
/*manager_id �� foreign key ���⿡�� employee table�� �ִ� ���� ���� ���� ���� �Ұ���*/
INSERT INTO departments (department_id,department_name,manager_id)
VALUES (130,'yd',100);

/*update*/
/*employee table�κ��� department_id�� 50���� �����ϰڴ�. employee_id �� 113���� �����!*/
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
/*�����ͺ��̽��� ���������� �ݿ��ϰڴ�*/
COMMIT;

DELETE copy_emp;

ROLLBACK;

SELECT *
FROM copy_emp;

/*department t���� d�� name Fianace�� ���� �����ϰڴ�1*/
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
/* �̰ŷ� ���������� �ѹ� �ص� ���� �Ұ���! > ������!*/
TRUNCATE TABLE copy_emp;

SELECT *
FROM copy_emp;

ROLLBACK;

SELECT *
FROM copy_emp;