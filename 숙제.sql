SELECT *
FROM departments;

SELECT *
FROM 부서명;
/*한글도 먹는다*/

SELECT *
FROM employees;
/*사원*/

SELECT department_id, location_id
From departments;

SELECT location_id, department_id
From departments;

/*셀렉트절 나열 순서대로 결과가 이뤄짐*/

SELECT department_id, department_id
From departments;

/*같은 거를 두번 나열해도 ㄱㄴ*/

SELECT last_name
From employees;

SELECT last_name,salary
From employees;
/*숫자는 왼쪽정렬 > 대문자*/

/*산술 연산자 ㄱㄴ*/
SELECT last_name, salary, salary+300
FROM employees;

SELECT last_name, salary, 12*salary+100
FROM employees;

SELECT last_name, salary, 12+(salary+100)
FROM employees;
/*괄호 넣어주면 계산결과 다름*/

SELECT last_name, job_id, salary, commission_pct
FROM employees;
/*sql plus는 null이 안 나오고 공백으로 나옴*/

SELECT last_name, 12*salary*commission_pct
FROM employees;
/*커미션 안 받는 사람도 null*/

/*null인 경우 1로 바꿔주겠다 NVL 함수 꼭 붙이기...*/
SELECT last_name, 12*salary*NVL(commission_pct,1)
FROM employees;

/*column alias*/
SELECT last_name AS name, commission_pct comm
FROM employees;

/*큰따옴표 안은 대소문자 그대로~*/
SELECT last_name "Name", salary*12 "Annual Salary"
FROM employees;

/*한글 먹는다 그래도 가급적 영어로 사용!*/
SELECT last_name AS 이름, commission_pct 보너스
FROM employees;

/*연결 연산자*/
SELECT last_name || job_id AS "Employees"
FROM employees;

/*리터럴 문자열 연결해서 쓰는 연산자*/
SELECT last_name || 'is a' || job_id
        AS "Employee Details"
FROM employees;

SELECT department_id
FROm employees;

SELECT DISTINCT department_id
FROM employees;
/**SELECT (ALL)DISTINCT department_id, job_id <<<ALL은 생략 default값이라...*/
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

/*emp로부터 90번 부서인 emp id, last name , job id ,d~말해라*/
SELECT employee_id, last_name, job_id, department_id
FROM employees
WHERE department_id = 90;

/*대소문자 구분*/
SELECT last_name, job_id, department_id
FROM employees
WHere last_name = 'Whalen';

SELECT last_name
FROM employees
WHERE hire_date ='05/10/10'

/*비교연산자*/
SELECT last_name,salary
FROM employees
WHERE salary <= 3000;

/*사원들 중 2005년 이전에 입사한 사원들의 사원이름,입사일 출력*/
SELECT last_name,hire_date
FROM employees
WHERE hire_date <'05/01/01'  /*04/12/31*/

/*SQL 연산자*/
SELECT last_name, salary
FROM employees
WHERE salary BETWEEN 2500 AND 3500;

/*돌아는 가는데 결과가 안 나옴 여기서 결과가 나오면 쓰레기값!*/
SELECT last_name, salary
FROM employees
WHERE salary BETWEEN 3500 AND 2500;

/*IN = or*/
SELECT employee_id, last_name, salary, manager_id
FROM employees
WHERE manager_id IN (100,101,201);

/*LIKE = 대체문자*/
SELECT first_name
FROM employees
WHERE first_name LIKE 'S%';

/*사원들 중에서 사원이름(last name)의 끝글자에 소문자 's'가 들어가는 사원의 last_name*/
SELECT last_name
FROM employees
WHERE last_name LIKE '%s';

/*입사일 년도가 05년인 사람만 보겠다*/
SELECT last_name, hire_date
FROM employees
WHERE hire_date LIKE '05%'

/*입사일 날짜가 05인 사람만 보겠다*/
SELECT last_name, hire_date
FROM employees
WHERE hire_date LIKE '%05'

/*last 네임 두 번째 글자가 소문자 o인 사람*/
SELECT last_name, hire_date
FROM employees
WHERE last_name LIKE '_o%'

SELECT employee_id, last_name, job_id
FROM employees
WHERE job_id LIKE '%SA_%';

/*모르겠음...*/
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

/*WHERE commission_pct = null; 표준 x is가 표준임!*/
/*com~이 null인 사람만 보임*/
SELECT *
FROM employees
WHERE commission_pct is null;

/*우선순위는 and가 더높음*/
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
  /* job _id만 만족하면 되는 것*/
  
    
SELECT last_name, job_id, salary
FROM employees
WHERE (job_id = 'SA_REP'
OR    job_id = 'AD_PRES')
AND   salary  > 15000;


/*시험*/











        
