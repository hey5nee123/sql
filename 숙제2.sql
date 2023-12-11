/*3 SELECT
1 FROM
2 WHERE
4 OREDER BY*/
/*�⺻�� ��������*/
SELECT last_name, job_id, department_id, hire_date
FROM employees
ORDER BY hire_date ;

/*��������*/
SELECT last_name, job_id, department_id, hire_date
FROM employees
ORDER BY hire_date DESC;

SELECT employee_id, last_name, salary*12 annsal
FROM employees
ORDER BY annsal;

SELECT employee_id, last_name, salary*12 annsal
FROM employees
ORDER BY annsal DESC;

/*����°(��������_�������� ����*/
SELECT employee_id, last_name, salary*12 annsal
FROM employees
ORDER BY 3;

/*�տ��� �������� ��������, �ڿ��� �������� ��������*/
SELECT      last_name, department_id,salary
FROM        employees
ORDER BY    department_id, salary DESC;

/*SELECT�� �� ������ (�ش��ϴ� ���̺� �ִ� ������)���� �� ����*/
SELECT      employee_id, salary
FROM        employees
ORDER BY    hire_date;

/*ġ�Ѻ��� > ����â�� ��Ÿ�� �̸���
cute�� ������� �ᵵ �ȴ�.*/
SELECT  employee_id, last_name, salary, department_id
FROM    employees
WHERE   employee_id = &CUTE;
 
/*���ڴ� ©�� ''�־���*/
/*����ڰ� ���ϴ� ��� ���ְڴ� */
SELECT  employee_id, last_name, job_id &column_name
FROM    employees
WHERE   &condition
ORDER BY &order_column;

/*&& �ѹ� ����� ��� ��� ����*/
SELECT employee_id, last_name,job_id,&&column_name
FROM employees
ORDER BY &column_name;

/*�׽�Ʈ*/
SELECT employee_id, salary
FROM employees
ORDER BY &column_name;

/*�޸𸮿��� �����ϴ� ��*/
UNDEFINE column_name;

/*job_history; ���̺� ��ȸ*/
SELECT * FROm job_history;

/*union*/
SELECT employee_id, job_id  /*107*/
FROM employees
UNION
SELECT employee_id, job_id /*10 2���� �ߺ��̰� 8���� ���� �ٸ� �����Ϳ���*/
FROM job_history;

SELECT employee_id 
FROM employees
UNION
SELECT employee_id  
FROM job_history;/*job_history�� employees�� ���Ե� ��*/

SELECT employee_id ,job_id,department_id
FROM employees
UNION ALL /*���� �Ұ�,�ߺ��� ���� X*/
SELECT employee_id,job_id,department_id
FROM job_history
ORDER BY employee_id;

 /*������*/
 SELECT employee_id, job_id
 FROM employees
 INTERSECT 
 SELECT employee_id, job_id
 FROM job_history ;
 
 SELECT employee_id, job_id
 FROM job_history 
 INTERSECT 
 SELECT employee_id, job_id
 FROM employees;
 
 /*minus*/
 SELECT employee_id
 FROM employees
 MINUS
 SELECT employee_id
 FROM job_history;
 
 SELECT employee_id
 FROM job_history
 MINUS
 SELECT employee_id
 FROM employees;
 
 SELECT * FROm employees;
 
 desc dual;
 
 SELECT * 
 FROM dual;
 
 select sysdate
 FROM employees;
 
 select sysdate
 FROM dual;
 
 /*�����Լ�*/                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
 SELECT 'The job id for '|| UPPER(last_name)|| ' is '
 ||LOWER(job_id) AS "EMPLOYEE DETAILS"
 FROM employees;
 
 /*col Ÿ���� �ƿ� �ҹ��ڷ�*/
 SELECT employee_id, last_name, department_id
 FROM employees
 WHERE LOWER(last_name) = 'higgins';
 
  SELECT last_name, SUBSTR(last_name,4)
 FROM employees
 WHERE department_id=110;
                                /*������ġ,�߶󳻴� ����*/
 SELECT last_name, SUBSTR(last_name,2,2)
 FROM employees
 WHERE department_id=110;

  SELECT last_name, SUBSTR(last_name,-3,2)
 FROM employees
 WHERE department_id=110;
 
  SELECT last_name
 FROM employees
 WHERE department_id=110;
 
 /*SELECT employee_id, CONCAT first_name,last_name NAME,
 jobid, LENGTH (last_name),
 INSTER(last_name,'a') "Contains 'a'?"
 FROM employees
 WHERE SUBSTR(job_id,4) = 'REP';*/
 
 /*Lt ���ʸ��߶󳻰ڴ�~*/
 SELECT LTRIM('yyedaymy','yea')
 FROM dual;
 
 /*Rt �����ʸ�!*/
 SELECT RTRIM('yyedaymy','yea')
 FROM dual;
 
 SELECT ROUND(345.678)    AS round1,
        ROUND(345.678,0)  AS round2,/*�Ҽ������� �ڸ��� ����=�⺻��*/
        ROUND(345.678,1)  AS round3,
        ROUND(345.678,-1) AS round4/*������ ���ڸ����� ���ڴ�*/
 FROM   dual;
 /*�� �ڸ����� �����ְڴ�*/
    SELECT TRUNC(345.678)    AS round1,
           TRUNC(345.678,0)  AS round2,/*�Ҽ������� �ڸ��� ����=�⺻��*/
           TRUNC(345.678,1)  AS round3,
           TRUNC(345.678,-1) AS round4/*������ ���ڸ����� ���ڴ�*/
     FROM  dual;
     
     /*salary % 5000 (�� ���ϴ� ��)*/
     SELECT last_name, salary, MOD(salary,5000)
     FROM employees;
     
     /*1*/
     SELECT SYSDATE "Date"
     FROM dual;
     /*2*/
     SELECT employee_id,last_name,salary,ROUND(salay *1.15) "New Salary"
     FROM employees;
--     WHERE salary
     /*3*/
     SELECT employee_id,last_name,salary,
     ROUND(salary*1.15)"New salary",
     ROUND(salary*1.15) " New salary".
     (salary*1.15)-salary "increase"
     FROM employees
     
     /*4*/
     SELECT LENGTH(last_name) name_length ,UPPER(last_name)name
     FROM employees 
     WHERE UPPER(SUBSTR(last_name,1,1) )IN ('J','A','M')
     ORDER BY 1;
     
     SELECT SYSDATE
     FROM dual;
     
 
 
 




