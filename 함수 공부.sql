   /*날짜*/
   SELECT SYSDATE
   FROM dual;
   
   SELECT last_name, (SYSDATE -hire_date)/7 AS WEEKS
   FROM employees
   WHERE department_id = 90;
   
   /*날짜 함수*/
   SELECT employee_id, hire_date,
          MONTHS_BETWEEN (SYSDATE, hire_date), TENURE, /*근무한 개월수*/
          ADD_MONTHS (hire_date, 6), REVIEW, /*입사한 6개월 후 날짜*/
          NEXT_DAY(hire_date, '금'), /*입사후 돌아오는 첫번째 금요일*/
          LAST_DAY(hire_date)  /*입사후 마지막 날짜*/
    FROM  employees;
   
   SELECT 
         ROUND(SYSDATE, 'YEAR'),/*7/1 0시가 기준*/
         ROUND(SYSDATE, 'MONTH'),/*16일 0시*/
         ROUND(SYSDATE, 'DAY'),/*수 낮 12시*/
         ROUND(SYSDATE, 'DD')/*낮 12시*/
  FROM dual;  
  
  2023/12/08 15:28....
  
     SELECT 
          TRUNC(SYSDATE, 'YEAR'),
          TRUNC(SYSDATE, 'MONTH'),
          TRUNC(SYSDATE, 'DAY'),
          TRUNC(SYSDATE, 'DD')
    FROM dual;  
    
   /* SELECT *
    FROM employees;
    WHERE employee_id = '101';*/
    
    
    /*세션 변경 뭔지는 모름*/
    ALTER SESSION SET
    NLS_DATE_LANGUAGE = AMERICAN;
                        /*원래 표기법 yy/mm/dd*/
    SELECT employee_id, TO_CHAR(hire_date, 'MM/YY') Month_Hired
    FROM employees;
    
    SELECT last_name,
    TO_CHAR(hire_date,'DD Month YYYY')
    FROM employees;
    
    /*m이 소문자*/
    SELECT last_name,
    TO_CHAR(hire_date,'DD month YYYY')
    FROM employees;
    
    /*mo이 다 대문자*/
    SELECT last_name,
    TO_CHAR(hire_date,'DD MONTH YYYY')
    FROM employees;
    
    /*fm이 들어가면 공백이 다 지워짐(숫자 중 0이 있으면 다 지워짐)*/
    SELECT last_name,
    TO_CHAR(hire_date,'fm   DD Month YYYY')
    FROM employees;
    
    SELECT last_name,
            TO_CHAR(hire_date, 'fmDdspth "of" Month YYYY fmHH: MI :SS AM')
    FROM    employees;
    
    /*숫자를 문자로 바꾸는 거*/
    SELECT TO_CHAR(salary, '$99,999.00')salary
    FROm employees;
    
    /*자리 넘침*/
    SELECT TO_CHAR(salary, '$9,999.00')salary
    FROm employees;
    
    /*문자를 숫자로*/
    SELECT TO_NUMBER('$3,400','$99,999')
    FROM dual;
    
    SELECT TO_DATE('2010년, 02월','YYYY"년", MM"월"')
    FROM dual;
    
    SELECT last_name, hire_date
    FROM employees
    WHERE hire_date >
            TO_DATE('2005년 07월 01일', 'YYYY"년" MM"월" DD"일"';
            
   SELECT last_name, hire_date
   FROM employees
   WHERE hire_date >
            TO_DATE('05/07/01','YY-MM-DD');
    
    
            /*fx를 붙일때는 형식을 똑같이 해줘야 함 엄격.*/    
   SELECT last_name, hire_date
    FROM employees
    WHERE hire_date >
            TO_DATE('05/07/01','fxYY/MM/DD');
    /*NVL*/
    SELECT last_name, salary, NVL(commission_pct, 0),
        (salary*12) + (salary*12*NVL(commission_pct,0)) AN_SAL
    FROM employees;
    
    SELECT last_name, salary, NVL(commission_pct,0)
    FROM employees;
    
    SELECT last_name, salary, NVL(To_CHAR(commission_pct),'보너스 없음')
    FROM employees;
    /*MVL2 expr1 이랑 2,3는 달라도 ㄱㅊ 2,3는 같아야 함!*/
    /*SELECT  last_name, salary, commission_pct
         NVL2(commission_pct,
        'SAL+COMM', 'SAL') income
    FROM employees;*/
    
    /*NULLIF*/
    SELECT first_name, LENGTH(first_name) "expr1",
            last_name, LENGTH(last_name) "expr2",
            NULLIF(LENGTH(first_name), LENGTH(last_name))result
    FROM employees;
    
    
SELECT last_name, job_id,salary,
        CASE job_id WHEN 'IT_PROG' THEN 1.10*salary
                    WHEN 'ST_CLERK'THEN 1.15*salary
                    WHEN 'SA_REP'  THEN 1.20*salary
                    ELSE salary
        END "REVISED_SALARY"
FROM employees;

SELECT last_name, job_id,salary,
        CASE job_id WHEN 'IT_PROG' THEN 1.10*salary
                    WHEN 'ST_CLERK'THEN 1.15*salary
                    WHEN 'SA_REP'  THEN 1.20*salary
                    ELSE salary
        END "REVISED_SALARY"
FROM employees;


/*~보다 작은 수를 표현할 때는 작은 수부터 적고 큰 수를 표현할 때는 큰수부터!*/
SELECT last_name,salary,
        CASE WHEN salary<5000 THEN 'Low'
             WHEN salary<10000 THEN 'Medium'
             WHEN salary<20000 THEN 'Good'
                                ELSE 'Excellent'
        END qualified_salary
FROm employees;

/*job_id 한거랑 결과 똑같이 나옴 DECODE 함수*/
SELECT last_name, job_id, salary,
        DECODE(job_id, 'IT_PROG', 1.10*salary,
                       'ST_CLERK', 1.15*salary,
                       'SA_REP',   1.20*salary,
                                    salary)
        REVISED_SALARY
FROM    employees;
/*중첩함수*/
SELECT NVL(TO_CHAR(commission_pct), '보너스 없음')
FROM employees;
    
/*문제*/   
/*5*/
   SELECT last_name, hire_date,
          ROUND(MONTHS_BETWEEN (SYSDATE, hire_date))
    FROM employees;
 /*6*/
 

    

    
         