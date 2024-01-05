select * from tab;

create table student (
 student_number varchar2(10) primary key,
 student_name varchar2(100) not null,
 english_score number default 80,
 mathmatic_score number default 70
);
--등록, 수정, 삭제, 단건조회, 목록.
insert into student(student_number, student_name, english_score, mathmatic_score)
values('23-004', '박길동', 70, 75);
insert into student(student_number, student_name)--, english_score, mathmatic_score)
values('23-007', '김민수');

select * from student order by 1;

update student 
set english_score=85
    ,mathmatic_score=75
where student_number='23-002';
delete from student where student_name='김민수';
select * from student where student_name='';




create table board (
 board_no number primary key,
 title varchar2(100) not null,
 content varchar2(500) not null,
 writer varchar2(50) not null,
 write_date date default sysdate,
 click_cnt number default 0,
 image varchar2(100)
);
create sequence board_seq;

insert into board (board_no, title, writer, content)
values(board_seq.nextval, '첫번째 글', '홍길동', 'JSP 열심히 공부하자');
insert into board (board_no, title, writer, content)
values(board_seq.nextval, '오늘은 금요일', '김박사', '불코딩하자');
insert into board (board_no, title, writer, content)
values(board_seq.nextval, '우리반 화이팅!!', '김막내', '열심히 공부해요');

select * from board order by 1;
update board set writer='김철수' where board_no=5;

select * from tab;

create table member (
 id varchar2(20) primary key,
 pw varchar2(10) not null,
 name varchar2(100) not null,
 responsibility varchar2(10) default 'User' -- Admin/ User
);
insert into member values('user1', '1111', '홍길동', 'User');
insert into member values('user2', '2222', '김철수', 'User');
insert into member values('user3', '3333', '관리자', 'Admin');
commit;

select * from member;

create table product (
 product_code char(8) primary key, -- P2023-01
 product_name varchar2(100) not null,
 product_desc varchar2(300) not null,
 origin_price number not null,
 sale_price number,
 like_it number default 3, --추천수
 image varchar2(30)
);
insert into product values('P2023-01', '상품', 'a', 3500, 3000, 5, 'a');

-- 댓글(댓글번호, 게시글번호, 내용, 작성자, 작성일시)
create table reply (
 reply_no number primary key,
 board_no number not null,
 reply varchar2(100) not null,
 replyer varchar2(30) not null,
 reply_date date default sysdate
);
create sequence reply_seq;
insert into reply values(reply_seq.nextval, 1, 'test1', 'user1', sysdate);
insert into reply values(reply_seq.nextval, 1, 'test2', 'user2', sysdate);
insert into reply values(reply_seq.nextval, 1, 'test2', 'user1', sysdate);

insert into reply values(reply_seq.nextval, 2, 'test1', 'user1', sysdate);
insert into reply values(reply_seq.nextval, 2, 'test2', 'user2', sysdate);
insert into reply values(reply_seq.nextval, 2, 'test2', 'user1', sysdate);


insert into reply values(reply_seq.nextval, 3, 'test1', 'user1', sysdate);
insert into reply values(reply_seq.nextval, 3, 'test2', 'user2', sysdate);
insert into reply values(reply_seq.nextval, 3, 'test2', 'user1', sysdate);

COMMIT;


--댓글 페이징.



SELECT b.* FROM
(SELECT ROWNUM rn, a.*
    FROM 
(
        select r.*, m.name name
		from reply r
		join member m
		on r.replyer = m.id
		where board_no = 3
        order by 1

    ) a ) b

WHERE b.rn > (2-1)*5 AND b.rn <= 2*5;
/*SELECT 를 두 번 해주겠다.*/
/* 1은 n */














COMMIT;


SELECT *
FROM reply;

SELECT r.*, m.name name
FROM reply r
JOIN member r

SELECT *
FROM reply;




