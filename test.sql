

create table reply (
   replyseq number(20),
   boardseq number(20),
   id varchar2(20) ,
   name varchar2(20),
   content varchar2(4000),
   w_date date
)

create sequence replyseq
	start with 1
	increment by 1
	minvalue 1
	nocycle
	
select * from household where id=? order by w_date desc


select * from FREE_BOARD;

create table free_board(
	seq number(5),
	title varchar2(100),           
	writer varchar2(4000),
	content varchar2(30),
	time varchar2(30),
	viewcount number(5),
	recommend_cnt number(5)
)
drop table free_board
drop sequence seq_board
create sequence seq_board


create sequence hhkey
	start with 1
	increment by 1
	minvalue 1
	nocycle

create table household (
   key number(20),
   id  varchar2(20),
   w_date  varchar2(20), 
   category  varchar2(20),
   content varchar2(20) ,
   price number(20),
   type number(1)
)


drop table notice;
drop sequence seq_notice;

select * from notice;

create table notice(
seq number(5),
title varchar2(100),     
writer varchar2(30),      
contents varchar2(4000),
time varchar2(30),
viewcount number(5),
recommend_cnt number(5)
);

create sequence seq_notice;



select * from free_board;

select * from membertest;

insert into membertest values ('test2','테스트2','test2@naver.com','1234','서울시 구로구','오프라인','일반회원',0);

select * from household;

select * from reply;

<<<<<<< HEAD
select * from LIKEY;

=======
>>>>>>> f812810dd0e0d16c45bf816b27fa12bed866b5e4
select *from notice;

create table membertest (
   id varchar2(20) primary key,
   name varchar2(20),
   email varchar2(30),
   password varchar2(20),
   address varchar2(60),
   status varchar2(20),
   class varchar2(20),
   score number(20)
)

insert into MEMBERTEST values ('admin','관리자','xxxx','1234','xxxx','오프라인','관리자',100000);

select * from household;

create table attendance (
  id varchar2(20),
  w_date varchar2(20)
);

select * from attendance;

select * from membertest;

insert into attendance values ('dolly0920',sysdate);

create table likey(
 id varchar2(20) ,
 seq number(5), 
 likey varchar2(10)
);

drop table likey;

select * from likey;

select * from free_board;
select * from reply

create table notice(
seq number(5),
title varchar2(100),     
writer varchar2(30),      
contents varchar2(4000),
time varchar2(30),
viewcount number(5),
recommend_cnt number(5)
);

create sequence seq_board;
create sequence seq_notice
drop table notice;
drop sequence seq_notice

select 
seq,title,writer,contents,time,
viewcount,recommend_cnt,
(select count(*) from reply 
where boardseq=seq)
from free_board,reply
where boardseq=seq
order by seq desc 


drop table free_board;
drop sequence seq_board;
drop table reply;
drop sequence replyseq

create table reply (
   replyseq number(20),
   boardseq number(20),
   id varchar2(20) ,
   name varchar2(20),
   content varchar2(4000),
   w_date date
)

create sequence replyseq
	start with 1
	increment by 1
	minvalue 1
	nocycle

	create table free_board(
	seq number(5),
	title varchar2(100),           
	writer varchar2(30),
	contents varchar2(4000),	
	time varchar2(30),
	viewcount number(5),
	recommend_cnt number(5)
)
create sequence seq_board;

create table attendance (
  id varchar2(20),
  w_date varchar2(20)
);

select * from attendance;

drop table attendance;

select * from household;

drop table household;

create table household (
   key number(20),
   id  varchar2(20),
   w_date  varchar2(20), 
   category  varchar2(20),
   content varchar2(20) ,
   price number(20),
   type number(1)
)

select substr(w_date,6,2), sum(price) from household group by substr(w_date,6,2) order by substr(w_date,6,2) asc;
