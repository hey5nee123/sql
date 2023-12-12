1. ������ ���� �ǽ��� ����� MY_EMPLOYEE ���̺��� �����Ͻÿ�.
CREATE TABLE my_employee
  (id         NUMBER(4) NOT NULL,
   last_name  VARCHAR2(25),
   first_name VARCHAR2(25),
   userid     VARCHAR2(8),
   salary     NUMBER(9,2));
    COMMIT;
2. MY_EMPLOYEE ���̺��� ������ ǥ���Ͽ� �� �̸��� �ĺ��Ͻÿ�.
DESC my_employee;

SELECT  *
FROM    my_employee;

3. ���� ���� �����͸� MY_EMPLOYEE ���̺� �߰��Ͻÿ�.
ID	LAST_NAME 	FIRST_NAME 	USERID 	SALARY
1  	Patel 		Ralph 		Rpatel 	895
2 	Dancs 		Betty 		Bdancs 	860
3 	Biri 		Ben 		Bbiri 	1100

INSERT INTO my_employee
VALUES (1,'Patel','Ralph','Rpatel',895);    

INSERT INTO my_employee
VALUES (2,'Dancs','Betty ','Bdancs',860); 

INSERT INTO my_employee
VALUES (3,'Biri','Ben','Bbiri',1100);  

INSERT INTO my_employee
VALUES (%id','%last_name','%first_name','&user0);  

4. ���̺� �߰��� �׸��� Ȯ���Ͻÿ�.
SELECT  *   
FROM    my_employee;

6. ��� 3�� ���� Drexler�� �����Ͻÿ�.

UPDATE  my_employee
SET     last_name ='Drexler'
WHERE   id =3;

7. �޿��� 900 �̸��� ��� ����� �޿��� 1000���� �����ϰ� ���̺��� ���� ������ Ȯ���Ͻÿ�.

UPDATE  my_employee
SET     salary =1000
WHERE   salary <900;

8. MY_EMPLOYEE ���̺��� ��� 3�� �����ϰ� ���̺��� ���� ������ Ȯ���Ͻÿ�.
DELETE FROM  my_employee
WHERE        id = 3;
11. ���̺��� ������ ��� �����ϰ� ���̺� ������ ��� �ִ��� Ȯ���Ͻÿ�.
DELETE      my_employee;

DESC        my_employee;

SELECT      *
FROM        my_employee;
