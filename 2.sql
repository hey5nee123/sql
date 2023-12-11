SELECT 
FROM 
WHERE 
1. �޿��� 12,000�� �Ѵ� ����� �̸��� �޿��� ǥ���ϴ� ���Ǹ� �����Ͻÿ�.
SELECT last_name,salary
FROM employees
WHERE salary > 12000;

2. ��� ��ȣ�� 176�� ����� �̸��� �μ� ��ȣ�� ǥ���ϴ� ���Ǹ� �����Ͻÿ�.
SELECT last_name,department_id
FROM employees
WHERE employee_id =176;


3. �޿��� 5,000���� 12,000 ���̿� ���Ե��� �ʴ� 
   ��� ����� �̸��� �޿��� ǥ���ϵ��� ���Ǹ� �����Ͻÿ�.
SELECT last_name,salary
FROM employees
WHERE salary NOT BETWEEN 5000 AND 12000;


6. �޿��� 5,000�� 12,000 �����̰� �μ� ��ȣ�� 20 �Ǵ� 50�� ����� �̸��� �޿��� �����ϵ��� ���Ǹ� �ۼ��Ͻÿ�. 
   �� ���̺��� Employee�� Monthly Salary�� ���� �����Ͻÿ�.
SELECT last_name "Employee" ,salary "Monthly Salary"
FROM employees
WHERE salary BETWEEN 5000 AND 12000 
      AND   department_id IN (20,50) 

7. 2005�⿡ �Ի��� ��� ����� �̸��� �Ի����� ǥ���Ͻÿ�.
SELECT last_name,hire_date
FROM employees
WHERE hire_date LIKE '05%'


8. �����ڰ� ���� ��� ����� �̸��� ������ ǥ���Ͻÿ�.
SELECT last_name,job_id
FROM employees
WHERE manager_id IS NULL;
10. �̸��� ����° ���ڰ� a�� ��� ����� �̸��� ǥ���Ͻÿ�.
SELECT last_name
FROM employees
WHERE last_name LIKE '__a%';

11. �̸��� a�� e�� �ִ� ��� ����� �̸��� ǥ���Ͻÿ�.
SELECT last_name
FROM employees
WHERE last_name LIKE '%a%'
    AND last_name LIKE '%e%';

12. ������ ���� ���(SA_REP) �Ǵ� �繫��(ST_CLERK)�̸鼭 
    �޿��� 2,500, 3,500, 7,000�� �ƴ� ��� ����� �̸�, ���� �� �޿��� ǥ���Ͻÿ�.
SELECT last_name,job_id,salary
FROM employees
WHERE job_id IN ('SA_REP','ST_CLERK')
AND  salary NOT IN (2500,3500,7000);

13. Ŀ�̼� ����(commission_pct)�� 20%�� ��� ����� �̸�, �޿� �� Ŀ�̼��� ǥ���ϵ��� 
    ��ɹ��� �ۼ��Ͽ� �����Ͻÿ�.
SELECT last_name,salary,commission_pct
FROM employees
WHERE commission_pct = 0.2;
