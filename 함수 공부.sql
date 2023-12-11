   /*��¥*/
   SELECT SYSDATE
   FROM dual;
   
   SELECT last_name, (SYSDATE -hire_date)/7 AS WEEKS
   FROM employees
   WHERE department_id = 90;
   
   /*��¥ �Լ�*/
   SELECT employee_id, hire_date,
          MONTHS_BETWEEN (SYSDATE, hire_date), TENURE, /*�ٹ��� ������*/
          ADD_MONTHS (hire_date, 6), REVIEW, /*�Ի��� 6���� �� ��¥*/
          NEXT_DAY(hire_date, '��'), /*�Ի��� ���ƿ��� ù��° �ݿ���*/
          LAST_DAY(hire_date)  /*�Ի��� ������ ��¥*/
    FROM  employees;
   
   SELECT 
         ROUND(SYSDATE, 'YEAR'),/*7/1 0�ð� ����*/
         ROUND(SYSDATE, 'MONTH'),/*16�� 0��*/
         ROUND(SYSDATE, 'DAY'),/*�� �� 12��*/
         ROUND(SYSDATE, 'DD')/*�� 12��*/
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
    
    
    /*���� ���� ������ ��*/
    ALTER SESSION SET
    NLS_DATE_LANGUAGE = AMERICAN;
                        /*���� ǥ��� yy/mm/dd*/
    SELECT employee_id, TO_CHAR(hire_date, 'MM/YY') Month_Hired
    FROM employees;
    
    SELECT last_name,
    TO_CHAR(hire_date,'DD Month YYYY')
    FROM employees;
    
    /*m�� �ҹ���*/
    SELECT last_name,
    TO_CHAR(hire_date,'DD month YYYY')
    FROM employees;
    
    /*mo�� �� �빮��*/
    SELECT last_name,
    TO_CHAR(hire_date,'DD MONTH YYYY')
    FROM employees;
    
    /*fm�� ���� ������ �� ������(���� �� 0�� ������ �� ������)*/
    SELECT last_name,
    TO_CHAR(hire_date,'fm   DD Month YYYY')
    FROM employees;
    
    SELECT last_name,
            TO_CHAR(hire_date, 'fmDdspth "of" Month YYYY fmHH: MI :SS AM')
    FROM    employees;
    
    /*���ڸ� ���ڷ� �ٲٴ� ��*/
    SELECT TO_CHAR(salary, '$99,999.00')salary
    FROm employees;
    
    /*�ڸ� ��ħ*/
    SELECT TO_CHAR(salary, '$9,999.00')salary
    FROm employees;
    
    /*���ڸ� ���ڷ�*/
    SELECT TO_NUMBER('$3,400','$99,999')
    FROM dual;
    
    SELECT TO_DATE('2010��, 02��','YYYY"��", MM"��"')
    FROM dual;
    
    SELECT last_name, hire_date
    FROM employees
    WHERE hire_date >
            TO_DATE('2005�� 07�� 01��', 'YYYY"��" MM"��" DD"��"';
            
   SELECT last_name, hire_date
   FROM employees
   WHERE hire_date >
            TO_DATE('05/07/01','YY-MM-DD');
    
    
            /*fx�� ���϶��� ������ �Ȱ��� ����� �� ����.*/    
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
    
    SELECT last_name, salary, NVL(To_CHAR(commission_pct),'���ʽ� ����')
    FROM employees;
    /*MVL2 expr1 �̶� 2,3�� �޶� ���� 2,3�� ���ƾ� ��!*/
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


/*~���� ���� ���� ǥ���� ���� ���� ������ ���� ū ���� ǥ���� ���� ū������!*/
SELECT last_name,salary,
        CASE WHEN salary<5000 THEN 'Low'
             WHEN salary<10000 THEN 'Medium'
             WHEN salary<20000 THEN 'Good'
                                ELSE 'Excellent'
        END qualified_salary
FROm employees;

/*job_id �ѰŶ� ��� �Ȱ��� ���� DECODE �Լ�*/
SELECT last_name, job_id, salary,
        DECODE(job_id, 'IT_PROG', 1.10*salary,
                       'ST_CLERK', 1.15*salary,
                       'SA_REP',   1.20*salary,
                                    salary)
        REVISED_SALARY
FROM    employees;
/*��ø�Լ�*/
SELECT NVL(TO_CHAR(commission_pct), '���ʽ� ����')
FROM employees;
    
/*����*/   
/*5*/
   SELECT last_name, hire_date,
          ROUND(MONTHS_BETWEEN (SYSDATE, hire_date))
    FROM employees;
 /*6*/
 

    

    
         