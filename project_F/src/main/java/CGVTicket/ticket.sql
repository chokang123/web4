CREATE TABLE mv_ticket(
sit varchar(5),
center varchar(255),
mv varchar(255),
day varchar(255),
time varchar(255),
Mirum varchar(255),
Buy_time TIMESTAMP DEFAULT SYSTIMESTAMP
);

DROP table mv_ticket;

select * from mv_ticket;

INSERT into mv_ticket(mv,Buy_Time) values('��ȭ', DEFAULT);

select sit from mv_ticket where center like 'CGV�Ǵ��Ա�';

