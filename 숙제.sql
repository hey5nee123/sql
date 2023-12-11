SELECT *
FROM departments;

SELECT *
FROM �μ���;
/*�ѱ۵� �Դ´�*/

SELECT *
FROM employees;
/*���*/

SELECT department_id, location_id
From departments;

SELECT location_id, department_id
From departments;

/*����Ʈ�� ���� ������� ����� �̷���*/

SELECT department_id, department_id
From departments;

/*���� �Ÿ� �ι� �����ص� ����*/

SELECT last_name
From employees;

SELECT last_name,salary
From employees;
/*���ڴ� �������� > �빮��*/

/*��� ������ ����*/
SELECT last_name, salary, salary+300
FROM employees;

SELECT last_name, salary, 12*salary+100
FROM employees;

SELECT last_name, salary, 12+(salary+100)
FROM employees;
/*��ȣ �־��ָ� ����� �ٸ�*/

SELECT last_name, job_id, salary, commission_pct
FROM employees;
/*sql plus�� null�� �� ������ �������� ����*/

SELECT last_name, 12*salary*commission_pct
FROM employees;
/*Ŀ�̼� �� �޴� ����� null*/

/*null�� ��� 1�� �ٲ��ְڴ� NVL �Լ� �� ���̱�...*/
SELECT last_name, 12*salary*NVL(commission_pct,1)
FROM employees;

/*column alias*/
SELECT last_name AS name, commission_pct comm
FROM employees;

/*ū����ǥ ���� ��ҹ��� �״��~*/
SELECT last_name "Name", salary*12 "Annual Salary"
FROM employees;

/*�ѱ� �Դ´� �׷��� ������ ����� ���!*/
SELECT last_name AS �̸�, commission_pct ���ʽ�
FROM employees;

/*���� ������*/
SELECT last_name || job_id AS "Employees"
FROM employees;

/*���ͷ� ���ڿ� �����ؼ� ���� ������*/
SELECT last_name || 'is a' || job_id
        AS "Employee Details"
FROM employees;

SELECT department_id
FROm employees;

SELECT DISTINCT department_id
FROM employees;
/**SELECT (ALL)DISTINCT department_id, job_id <<<ALL�� ���� default���̶�...*/
SELECT DISTINCT department_id, job_id
FROM employees;

/*1*/
SELECT *
FROM departments;

/*2*/
DESC employees;
SELECT employee_id,last_name, job_id , hire_date AS STARTDATE
From employees;

/*3*/ 
SELECT DISTINCT job_id
From employees;
/*4*/
SELECT employee_id "EMP", last_name"Employee", job_id "job", hire_date " hire Date"
From employees;
/*5*/
SELECT  job_id ||last_name AS  "Employee and  Title"
From employees;

/*emp�κ��� 90�� �μ��� emp id, last name , job id ,d~���ض�*/
SELECT employee_id, last_name, job_id, department_id
FROM employees
WHERE department_id = 90;

/*��ҹ��� ����*/
SELECT last_name, job_id, department_id
FROM employees
WHere last_name = 'Whalen';

SELECT last_name
FROM employees
WHERE hire_date ='05/10/10'

/*�񱳿�����*/
SELECT last_name,salary
FROM employees
WHERE salary <= 3000;

/*����� �� 2005�� ������ �Ի��� ������� ����̸�,�Ի��� ���*/
SELECT last_name,hire_date
FROM employees
WHERE hire_date <'05/01/01'  /*04/12/31*/

/*SQL ������*/
SELECT last_name, salary
FROM employees
WHERE salary BETWEEN 2500 AND 3500;

/*���ƴ� ���µ� ����� �� ���� ���⼭ ����� ������ �����Ⱚ!*/
SELECT last_name, salary
FROM employees
WHERE salary BETWEEN 3500 AND 2500;

/*IN = or*/
SELECT employee_id, last_name, salary, manager_id
FROM employees
WHERE manager_id IN (100,101,201);

/*LIKE = ��ü����*/
SELECT first_name
FROM employees
WHERE first_name LIKE 'S%';

/*����� �߿��� ����̸�(last name)�� �����ڿ� �ҹ��� 's'�� ���� ����� last_name*/
SELECT last_name
FROM employees
WHERE last_name LIKE '%s';

/*�Ի��� �⵵�� 05���� ����� ���ڴ�*/
SELECT last_name, hire_date
FROM employees
WHERE hire_date LIKE '05%'

/*�Ի��� ��¥�� 05�� ����� ���ڴ�*/
SELECT last_name, hire_date
FROM employees
WHERE hire_date LIKE '%05'

/*last ���� �� ��° ���ڰ� �ҹ��� o�� ���*/
SELECT last_name, hire_date
FROM employees
WHERE last_name LIKE '_o%'

SELECT employee_id, last_name, job_id
FROM employees
WHERE job_id LIKE '%SA_%';

/*�𸣰���...*/
SELECT employee_id, last_name, job_id
FROM employees
WHERE job_id LIKE '%SA\_%' ESCAPE '\';

SELECT employee_id, last_name, job_id
FROM employees
WHERE job_id LIKE '%_%' ;

SELECT employee_id, last_name, job_id
FROM employees
WHERE job_id LIKE '%\_M%';

SELECT employee_id, last_name, job_id
FROM employees
WHERE job_id LIKE '%\_M%' ESCAPE '\' ;

/*WHERE commission_pct = null; ǥ�� x is�� ǥ����!*/
/*com~�� null�� ����� ����*/
SELECT *
FROM employees
WHERE commission_pct is null;

/*�켱������ and�� ������*/
SELECT employee_id, last_name, job_id, salary
FROM employees
WHERE salary >= 10000
AND job_id LIKE '%MAN%';

/*or*/
SELECT employee_id, last_name, job_id, salary
FROM employees
WHERE salary >= 10000
OR job_id LIKE '%MAN%'; 

/*not*/
SELECT last_name, job_id
FROM employees
WHERE job_id
    NOT IN ('IT_PROG', 'ST_CLERK','SA_REP');
    
SELECT last_name, job_id, salary
FROM employees
WHERE job_id = 'SA_REP'  /*2*/
OR    job_id = 'AD_PRES' /*1*/
AND   salary  > 15000;
  /* job _id�� �����ϸ� �Ǵ� ��*/
  
    
SELECT last_name, job_id, salary
FROM employees
WHERE (job_id = 'SA_REP'
OR    job_id = 'AD_PRES')
AND   salary  > 15000;


/*����*/











        
