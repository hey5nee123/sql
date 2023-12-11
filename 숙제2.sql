/*3 SELECT
1 FROM
2 WHERE
4 OREDER BY*/
/*기본값 오름차순*/
SELECT last_name, job_id, department_id, hire_date
FROM employees
ORDER BY hire_date ;

/*내림차순*/
SELECT last_name, job_id, department_id, hire_date
FROM employees
ORDER BY hire_date DESC;

SELECT employee_id, last_name, salary*12 annsal
FROM employees
ORDER BY annsal;

SELECT employee_id, last_name, salary*12 annsal
FROM employees
ORDER BY annsal DESC;

/*세번째(오더바이_기준으로 정렬*/
SELECT employee_id, last_name, salary*12 annsal
FROM employees
ORDER BY 3;

/*앞에꺼 기준으로 오름차순, 뒤에꺼 기준으로 내림차순*/
SELECT      last_name, department_id,salary
FROM        employees
ORDER BY    department_id, salary DESC;

/*SELECT에 안 보여도 (해당하는 테이블에 있는 정보면)정렬 된 거임*/
SELECT      employee_id, salary
FROM        employees
ORDER BY    hire_date;

/*치한변수 > 실행창에 나타는 이름임
cute는 마음대로 써도 된다.*/
SELECT  employee_id, last_name, salary, department_id
FROM    employees
WHERE   employee_id = &CUTE;
 
/*문자는 짤대 ''넣어줘*/
/*사용자가 원하는 대로 해주겠다 */
SELECT  employee_id, last_name, job_id &column_name
FROM    employees
WHERE   &condition
ORDER BY &order_column;

/*&& 한번 저장시 계속 사용 ㄱㄴ*/
SELECT employee_id, last_name,job_id,&&column_name
FROM employees
ORDER BY &column_name;

/*테스트*/
SELECT employee_id, salary
FROM employees
ORDER BY &column_name;

/*메모리에서 해제하는 법*/
UNDEFINE column_name;

/*job_history; 테이블 조회*/
SELECT * FROm job_history;

/*union*/
SELECT employee_id, job_id  /*107*/
FROM employees
UNION
SELECT employee_id, job_id /*10 2개만 중복이고 8개는 뭔가 다른 데이터였음*/
FROM job_history;

SELECT employee_id 
FROM employees
UNION
SELECT employee_id  
FROM job_history;/*job_history가 employees에 포함된 거*/

SELECT employee_id ,job_id,department_id
FROM employees
UNION ALL /*정렬 불가,중복값 제거 X*/
SELECT employee_id,job_id,department_id
FROM job_history
ORDER BY employee_id;

 /*교집합*/
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
 
 /*문자함수*/                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
 SELECT 'The job id for '|| UPPER(last_name)|| ' is '
 ||LOWER(job_id) AS "EMPLOYEE DETAILS"
 FROM employees;
 
 /*col 타입을 아예 소문자로*/
 SELECT employee_id, last_name, department_id
 FROM employees
 WHERE LOWER(last_name) = 'higgins';
 
  SELECT last_name, SUBSTR(last_name,4)
 FROM employees
 WHERE department_id=110;
                                /*시작위치,잘라내는 개수*/
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
 
 /*Lt 왼쪽만잘라내겠다~*/
 SELECT LTRIM('yyedaymy','yea')
 FROM dual;
 
 /*Rt 오른쪽만!*/
 SELECT RTRIM('yyedaymy','yea')
 FROM dual;
 
 SELECT ROUND(345.678)    AS round1,
        ROUND(345.678,0)  AS round2,/*소수점이하 자리수 없다=기본값*/
        ROUND(345.678,1)  AS round3,
        ROUND(345.678,-1) AS round4/*정수부 한자리까지 보겠다*/
 FROM   dual;
 /*그 자리까지 보여주겠다*/
    SELECT TRUNC(345.678)    AS round1,
           TRUNC(345.678,0)  AS round2,/*소수점이하 자리수 없다=기본값*/
           TRUNC(345.678,1)  AS round3,
           TRUNC(345.678,-1) AS round4/*정수부 한자리까지 보겠다*/
     FROM  dual;
     
     /*salary % 5000 (몫 구하는 거)*/
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
     
 
 
 




