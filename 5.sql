���� �� ������ ��ȿ���� �Ǻ��Ͽ� True �Ǵ� False�� ���Ͻÿ�.
1. �׷� �Լ��� ���� �࿡ ����Ǿ� �׷� �� �ϳ��� ����� ����Ѵ�.

sytem.out.println("F");

2. �׷� �Լ��� ��꿡 ���� �����Ѵ�.

sytem.out.println("F"); /*count * ����� �� ����*/

3. WHERE ���� �׷� ��꿡 ��(row)�� ���Խ�Ű�� ���� ���� �����Ѵ�.

sytem.out.println("T");

4. ��� ����� �޿� �ְ��, ������, �Ѿ� �� ��վ��� ǥ���Ͻÿ�. 
�� ���̺��� ���� Maximum, Minimum, Sum �� Average�� �����ϰ� ����� 
������ �ݿø��ϵ��� �ۼ��Ͻÿ�.

SELECT 
    MAX(salary) "Maximum",
    MIN(salary)"Minimum" ,
    COUNT(salary)"Sum",
    ROUND(AVG(salary))"Average"
FROM employees;

5. ���� ���Ǹ� �����Ͽ� �� ���� ����(job_id)���� �޿� �ְ��, 
������, �Ѿ� �� ��վ��� ǥ���Ͻÿ�. 

SELECT job_id,
       MAX(salary) "Maximum",
       MIN(salary)"Minimum" ,
       COUNT(salary)"Sum",
       ROUND(AVG(salary))"Average"
FROM   employees
GROUP BY job_id;

6. ������ ��� ���� ǥ���ϴ� ���Ǹ� �ۼ��Ͻÿ�.
SELECT      job_id,COUNT(employee_id)
FROM        employees
GROUP BY    job_id;

7. ������ ���� Ȯ���Ͻÿ�. �� ���̺��� Number of Managers�� �����Ͻÿ�.
(��Ʈ: MANAGER_ID ���� ���)

SELECT COUNT(DISTINCT manager_id)
FROM employees;

/*SELECT      COUNT(manager_id) "Number of Managers"
FROM        employees;*/


8. �ְ� �޿��� ���� �޿��� ������ ǥ���ϴ� ���Ǹ� �ۼ��ϰ� �� 
���̺��� DIFFERENCE�� �����Ͻÿ�.

SELECT  MAX(salary) - MIN(salary) "DIFFERENCE"
FROM    employees;

9. ������ ��ȣ �� �ش� �����ڿ� ���� ����� ���� �޿��� ǥ���Ͻÿ�. 
�����ڸ� �� �� ���� ��� (WHERE)�� ���� �޿��� 6,000 �̸��� �׷��� ���ܽ�Ű��(HAVING) >date�� �����ö�!
����� �޿��� ���� ������������ �����Ͻÿ�.

SELECT      manager_id, MIN(salary)
FROM        employees
WHERE       manager_id IS NOT NULL
GROUP BY    manager_id
HAVING      MIN(salary) >= 6000
ORDER BY    MIN(salary) DESC;