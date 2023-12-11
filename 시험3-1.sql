/*5*/
    SELECT last_name
           ROUND(MONTHS_BETWEEN (SYSDATE, hire_date))AS 'MONTHS_WORKED'
    FROM   employees;
/*6*/
    SELECT TO_CHAR(salary, '$999,999,999,999,999')salary
    FROm employees;
/*7*/
    SELECT  last_name