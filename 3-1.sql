2. �� ����� ���� ��� ��ȣ, �̸�, �޿� �� 
   15% �λ�� �޿��� ������ ǥ���Ͻÿ�. 
   �λ�� �޿� ���� ���̺��� New Salary�� �����Ͻÿ�.
   
SELECT employee_id,last_name,salary,
        ROUND (salary*1.15) "New Salary" 
FROM employees;



3. 2�� ���Ǹ� �����Ͽ� 
   �� �޿����� ���� �޿��� ���� �� ���� �߰��ϰ� 
   ���̺��� Increase�� �����ϰ� ������ ���Ǹ� �����Ͻÿ�.
SELECT employee_id,last_name,salary,
        ROUND (salary*1.15)-salary "Increase" 
FROM employees;


4. �̸��� J, A �Ǵ� M���� �����ϴ� 
   ��� ����� �̸�(�빮�� ǥ��) �� �̸� ���̸� ǥ���ϴ� 
   ���Ǹ� �ۼ��ϰ� ������ ������ ���̺��� �����Ͻÿ�. 
   ����� ����� �̸��� ���� �����Ͻÿ�.
   
   SELECT UPPER(last_name) "name" ,LENGTH(last_name) "length"
   FROM employees
   WHERE UPPER(SUBSTR(last_name,1,1)) IN ('J','A','M')
   ORDER BY LENGTH(last_name) ;

