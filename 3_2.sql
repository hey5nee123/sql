5. �� ����� �̸��� ǥ���ϰ� �ٹ� �� ��(�Ի��Ϸκ��� ��������� �� ��)�� ����Ͽ� �� ���̺��� MONTHS_WORKED�� �����Ͻ�
��. ����� ������ �ݿø��Ͽ� ǥ���Ͻÿ�.

SELECT last_name, ROUND(MONTHS_BETWEEN(SYSDATE,hire_date)) "MONTHS_WORKED"
FROM employees;
--WHERE
6. ��� ����� �� �� �޿��� ǥ���ϱ� ���� query�� �ۼ��մϴ�. �޿��� 15�� ���̷� ǥ�õǰ� ���ʿ� # 
��ȣ�� ä�������� ������ �����Ͻÿ�. �� ���̺��� SALARY �� �����մϴ�.

SELECT last_name,
LPAD(salary,15,'#') "SALARY"
FROM employees;

7. �μ� 90�� ��� ����� ���� ��(last_name) �� ���� �Ⱓ(�� ����)�� ǥ���ϵ��� query �� �ۼ��Ͻÿ�. 
�ָ� ��Ÿ���� ���� ���� ���̺�� TENURE�� �����ϰ� �ָ� ��Ÿ���� ���� ���� ������ ��Ÿ���ÿ�.

SELECT last_name, ROUND ((SYSDATE-hire_date)/7)"TENURE"
FROM employees;

+sql04����

1. �� ����� ���� ���� �׸��� �����ϴ� ���Ǹ� �ۼ��ϰ� �� ���̺��� Dream Salaries�� �����Ͻÿ�.
<employee last_name> earns <salary> monthly but wants <3 times salary>. 
<����> Matos earns $2,600.00 monthly but wants $7,800.00.
SELECT last_name ||' earns '||INITCAP(TO_CHAR(salary,'$999,999,999.999'))||
       ' monthly but wants'||TO_CHAR(salary*3,'$9,999,999.999') AS " Dream Salaries"
FROM employees;


2. ����� �̸�, �Ի��� �� �޿� �������� ǥ���Ͻÿ�. �޿� �������� ���� ���� ����� �� ù��° �������Դϴ�.
�� ���̺��� REVIEW�� �����ϰ� ��¥�� "2010.03.31 ������"�� ���� �������� ǥ�õǵ��� �����Ͻÿ�.
SELECT last_name,hire_date,TO_CHAR(NEXT_DAY((ADD_MONTHS(hire_date,6)),'��'),'YYYY.MM.DD. DAY') "REVIEW"
FROM employees;


3. �̸�, �Ի��� �� ���� ���� ������ ǥ���ϰ� �� ���̺��� DAY�� �����Ͻÿ�. 
�������� �������� �ؼ� ������ �������� ����� �����Ͻÿ�.
/*-1 �༭ �Ͽ����� 0�� �����!*/

SELECT last_name, hire_date,TO_CHAR(hire_date,'day') "����"
FROM employees
ORDER BY TO_CHAR(hire_date-1,'D');

4. ����� �̸��� Ŀ�̼��� ǥ���ϴ� ���Ǹ� �ۼ��Ͻÿ�. Ŀ�̼��� ���� �ʴ� ����� ��� 
��No Commission���� ǥ���Ͻÿ�. �� ���̺��� COMM���� �����Ͻÿ�.

SELECT first_name,NVL(TO_CHAR(Commission_pct),'"No Commission"')"COMM"
FROM employees
ORDER BY commission_pct;


5. DECODE �Լ��� CASE ������ ����Ͽ� ���� �����Ϳ� ���� JOB_ID ���� ���� ��������
��� ����� ����� ǥ���ϴ� ���Ǹ� �ۼ��Ͻÿ�.

����         ���
AD_PRES     A
ST_MAN      B
IT_PROG     C
SA_REP      D
ST_CLERK    E
�׿�         0

SELECT job_id,
       CASE job_id WHEN 'AD_PRES' THEN 'A'
                   WHEN 'ST_MAN' THEN 'B'
                   WHEN 'IT_PROG' THEN 'c'
                   WHEN 'SA_REP' THEN 'D'
                   WHEN 'ST_CLERK' THEN 'E'
                   ELSE '0'
       END
       AS "���"
FROM employees
ORDER BY 1;/*�ñ�*/