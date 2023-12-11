1. �� ����� ���� ���� �׸��� �����ϴ� ���Ǹ� �ۼ��ϰ�
 �� ���̺��� Dream Salaries�� �����Ͻÿ�.(��ȯ�Լ�, ���� ������)
<employee last_name> earns <salary> monthly but wants < salary�� 3��>. 
<����> Matos earns $2,600.00 monthly but wants $7,800.00.

SELECT last_name||' earns '||INITCAP(salary)||' monthly but wants '||salary*3 " Dream Salaries"
FROM employees;


2. ����� �̸�, �Ի��� �� �޿� �������� ǥ���Ͻÿ�. �޿� �������� ���� ���� ����� �� ù��° �������Դϴ�.
�� ���̺��� REVIEW�� �����ϰ� ��¥�� "2010.03.31 ������"�� ���� �������� ǥ�õǵ��� �����Ͻÿ�.(��¥�Լ�)

SELECT last_name,hire_date,
      TO_CHAR(NEXT_DAY(ADD_MONTHS(hire_date,6),'��'),'YYYY.MM.DD.DAY')
FROM employees;


3. �̸�, �Ի��� �� ���� ���� ������ ǥ���ϰ� �� ���̺��� DAY�� �����Ͻÿ�.(��¥�Լ�)
 �������� �������� �ؼ� ������ �������� ����� �����Ͻÿ�.(���)
 
SELECT last_name,hire_date,TO_CHAR(hire_date,'DAY')
FROM employees
ORDER BY TO_CHAR(hire_date-1,'d');

4. ����� �̸��� Ŀ�̼��� ǥ���ϴ� ���Ǹ� �ۼ��Ͻÿ�.
Ŀ�̼��� ���� �ʴ� ����� ��� ��No Commission���� ǥ���Ͻÿ�. �� ���̺��� COMM���� �����Ͻÿ�.(NVL�Լ�)
SELECT last_name,NVL(TO_CHAR(commission_pct),'"No Commission��') AS "COMM"
FROM employees;
5. DECODE �Լ��� CASE ������ ����Ͽ� ���� �����Ϳ� ���� JOB_ID ���� ���� �������� ��� ����� ����� ǥ���ϴ� ���Ǹ� �ۼ��Ͻÿ�.

����         ���
AD_PRES     A
ST_MAN      B
IT_PROG     C
SA_REP      D
ST_CLERK    E
�׿�         0
SELECT job_id "����",
        DECODE (job_id,'AD_PRES','A',
                       'ST_MAN','B',
                       'IT_PROG','C',
                       'SA_REP','D',
                       'ST_CLERK','E',
                                 0)
              AS "���"
FROM employees;
