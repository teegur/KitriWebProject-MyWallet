

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
	contents varchar2(4000),
	writer varchar2(30),
	time varchar2(30),
	viewcount number(5),
	recommend_cnt number(5)
)

create table household (
   id  varchar2(20),
   w_date  varchar2(20), 
   category  varchar2(20),
   content varchar2(20) ,
   price number(20),
   type number(1)
)

create table membertest (
   id varchar2(20) primary key,
   name varchar2(20),
   email varchar2(30),
   password varchar2(20),
   address varchar2(60),
   status varchar2(20),
   class varchar2(20)
);

create table household (
   id  varchar2(20),
   w_date  varchar2(20), 
   category  varchar2(20),
   content varchar2(20) ,
   price number(20),
   type number(1)
);

insert into membertest values ('admin','관리자','xxx', '1234', 'xxxx', '오프라인', '관리자')

select * from free_board;

select * from membertest;

select * from household;

select * from reply;

select * from household;