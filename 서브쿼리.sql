SELECT last_name, salary
FROM employees
WHERE salary In (SELECT MAX(salary)
                 FROM       employees
                 GROUP BY department_id);
                 
                 
SELECT MAX(salary),department_id,last_name
FROM       employees
GROUP BY department_id,last_name;

/* Abel���� �޿��� �� ���� �޴� ��� ã����*/

SELECT last_name, salary
FROM employees
WHERE salary > 
                (SELECT salary
                 FROM employees
                 WHERE last_name = 'Abel');


SELECT employee_id, last_name, job_id
FROM employees
WHERE job_id = (SELECT job_id
                FROM employees
                WHERE employee_id=141);

/*141���� �����ϰ�*/
SELECT employee_id, last_name, job_id
FROM employees
WHERE job_id = (SELECT job_id
                FROM employees
                WHERE employee_id=141)
AND employee_id != 141;

SELECT last_name, job_id,salary
FROM employees
WHERE job_id =
                (SELECT job_id
                 FROM employees
                 WHERE last_name = 'Abel')
AND   salary  >  
               (SELECT salary
                FROM   employees
                WHERE last_name = 'Abel');
  /*single������ �ΰ� �߸� x*/              
SELECT *
FROM employees
WHERE last_name = 'Taylor';
