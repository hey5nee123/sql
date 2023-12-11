/*�׷��Լ�*/
/*avg max (����,��¥ �Ұ���)
min sum(���� ��¥ ����) ���ϱ�*/
SELECT ROUND(AVG(salary)), MAX(salary),
       MIN(salary), SUM(salary)
FROM employees
WHERE job_id LIKE'%REP%';

SELECT job_id
FROM employees
WHERE job_id LIKE'%REP%';

/*max min�� ��� ������ Ÿ�Կ� ���� ����*/
SELECT MIN(hire_date), MAX(hire_date)
FROM employees;

SELECT MIN(last_name), MAX(last_name)
FROM employees;

SELECT COUNt(*)
FROM employees;

SELECT COUNT(*)
FROM departments;

/*50�� �μ��� ���*/
SELECT COUNt(*)
FROM employees
WHERE department_id = 50;

SELECT COUNT(commission_pct)
FROM employees
WHERE department_id = 80;

SELECT COUNT(distinct department_id),
       COUNT(department_id) /* =11*/
FROM employees;


SELECT distinct department_id
FROM employees;

/*�ڿ� �ִ� �Ŵ� (null�� ��� ���� ����), ���� null�� ���� (107�� ����)*/
SELECT AVG(NVL(commission_pct,0)), AVG(commission_pct)
FROM employees;
/*GROUP  BY��*/
SELECT   department_id, AVG(salary)
FROM     employees
GROUP BY department_id;

SELECT    AVG(salary)
FROM     employees;
GROUP BY department_id;

SELECT department_id, job_id, sum(salary)
FROM employees
GROUP BY department_id, job_id
ORDER BY job_id;

SELECT department_id, job_id, sum(salary),COUNT(salary)
FROM employees
GROUP BY department_id, job_id
ORDER BY job_id;


SELECT department_id, job_id, sum(salary)
FROM employees
WHERE department_id > 40
GROUP BY department_id, job_id
ORDER BY department_id;

SELECT department_id, job_id, sum(salary),COUNT(salary)
FROM employees
WHERE department_id > 40
GROUP BY department_id, job_id
ORDER BY department_id;

/*HAVING ���� GROUP BY���� �ʿ�!*/
SELECT department_id AS "�μ�", MAX(salary) "��"
FROm employees
GROUP BY department_id
HAVING MAX(salary)>10000;

/*�𸣰��� payroll?*/
SELECT job_id, SUM(salary) PAYROLL 
FROM employees
WHERE job_id NOT LIKE '%REP%'
GROUP BY job_id
HAVING SUM(salary) >13000
ORDER BY SUM(salary);

/*group �Լ��� ��ø�� ��� select �� �տ��� ��� �Ϲ� col�� �� �� ����*/
SELECT department_id,MAX(AVG(salary))
FROM employees
GROUP BY department_id;



