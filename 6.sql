1. LOCATIONS �� COUNTRIES ���̺��� ����Ͽ� ��� �μ��� �ּҸ� �����ϴ� query�� �ۼ��Ͻÿ�. 
��¿� ��ġID(location_id), �ּ�(street_address), ��/��(city), ��/��(state_province) �� ����(country_name)�� ǥ���Ͻÿ�.

DESC LOCATIONS;
DESC COUNTRIES;

SELECT  l.location_id,l.street_address,l.city,l.state_province,c.country_name/*,c.country_id,l.country_id*/
FROM    locations l, countries c
WHERE   c.country_id = l.country_id;

ANSI 

SELECT  l.location_id,l.street_address,l.city,l.state_province,c.country_name/*,c.country_id,l.country_id*/
FROM    locations l, countries c
                ON   c.country_id = l.country_id;



2. ��� ����� �̸�, �Ҽ� �μ���ȣ �� �μ� �̸��� ǥ���ϴ� query�� �ۼ��Ͻÿ�.
SELECT  e.last_name,e.department_id,d.department_name "�μ��̸�"/*,d.department_id*/
FROM    employees e, departments d
WHERE   e.department_id = d.department_id;

ANSI 
SELECT  e.last_name,e.department_id,d.department_name "�μ��̸�"/*,d.department_id*/
FROM    employees e, departments d
WHERE   e.department_id JOIN d.department_id;
                


/*e.d_id�� ����Ű*/

DESC employees;
DESC departments;

3. Toronto�� �ٹ��ϴ� ����� ���� ������ �ʿ�� �մϴ�.
toronto���� �ٹ��ϴ� ��� ����� �̸�, ����, �μ���ȣ �� �μ� �̸��� ǥ���Ͻÿ�.

SELECT  e.last_name,e.job_id,e.department_id,d.department_name
FROM    departments d, employees e,locations l
/*���⼭*/
WHERE   d.department_id = e.department_id;
AND     l.location_id = d.location_id
/*��������� ��������*/
AND     LOWER(city) = 'Toronto';

4. ����� �̸� �� ��� ��ȣ�� �ش� �������� �̸� �� ������ ��ȣ�� �Բ� ǥ���ϴ� ������ �ۼ��ϴµ�, 
�� ���̺��� ���� Employee, Emp#, Manager �� Mgr#���� �����Ͻÿ�.

SELECT  w.last_name,w.employee_id,
        m.last_name,m.employee_id 
FROM    employees w, employees m
WHERE   w.manager_id = m.manager_id;

5. King�� ���� �ش� �����ڰ� �������� ���� ����� ǥ���ϵ��� 4�� ������ �����մϴ�.
��� ��ȣ������ ����� �����Ͻÿ�. /*outer*/

SELECT      w.last_name,w.employee_id,
            m.last_name,m.employee_id 
FROM        employees w, employees m
WHERE       w.manager_id = m.manager_id(+)
ORDER BY    2;

6. ���� ��� �� �޿��� ���� ������ �ʿ�� �մϴ�. 
���� JOB_GRADES ���̺��� ������ ǥ���� ���� ��� ����� �̸�, ����, �μ� �̸�, �޿� �� ����� ǥ���ϴ� query�� �ۼ��Ͻÿ�.

SELECT  e.last_name,e.job_id,d.department_name,e.salary,j.grade_level
FROM    employees e, departments d,job_grades j
WHERE   e.department_id = d.department_id
AND     e.salary BETWEEN j.lowest_sal AND j.highest_sal;