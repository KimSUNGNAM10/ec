create table board (
no number(20) primary key,
poster varchar2(20),
subject varchar2(100),
contents varchar2(2000),
lastpost date,
views number(5),
filename varchar2(50)
);