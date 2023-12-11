/*그룹함수*/
/*avg max (문자,날짜 불가능)
min sum(문자 날짜 가능) 구하기*/
SELECT ROUND(AVG(salary)), MAX(salary),
       MIN(salary), SUM(salary)
FROM employees
WHERE job_id LIKE'%REP%';

SELECT job_id
FROM employees
WHERE job_id LIKE'%REP%';

/*max min은 모든 데이터 타입에 적용 ㄱㄴ*/
SELECT MIN(hire_date), MAX(hire_date)
FROM employees;

SELECT MIN(last_name), MAX(last_name)
FROM employees;

SELECT COUNt(*)
FROM employees;

SELECT COUNT(*)
FROM departments;

/*50번 부서인 사원*/
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

/*뒤에 있는 거는 (null인 사람 뺴고 나눔), 앞은 null값 포함 (107로 나눔)*/
SELECT AVG(NVL(commission_pct,0)), AVG(commission_pct)
FROM employees;
/*GROUP  BY절*/
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

/*HAVING 절은 GROUP BY절이 필요!*/
SELECT department_id AS "부서", MAX(salary) "돈"
FROm employees
GROUP BY department_id
HAVING MAX(salary)>10000;

/*모르겠음 payroll?*/
SELECT job_id, SUM(salary) PAYROLL 
FROM employees
WHERE job_id NOT LIKE '%REP%'
GROUP BY job_id
HAVING SUM(salary) >13000
ORDER BY SUM(salary);

/*group 함수를 중첩할 경우 select 절 앞에는 어떠한 일반 col을 올 수 없음*/
SELECT department_id,MAX(AVG(salary))
FROM employees
GROUP BY department_id;



