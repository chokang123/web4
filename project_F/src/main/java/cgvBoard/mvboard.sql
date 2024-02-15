


select * from mvboard;

CREATE SEQUENCE no_seq;

create table mvboard(
mvno number(10) primary key,
mvautor varchar(255) not null,
mvtitle varchar(500) not null,
mvcontent varchar(500) not null,
mvtype varchar(255) not null,
mvfile varchar(255),
mvtime TIMESTAMP DEFAULT SYSTIMESTAMP
);

create table mvboardSub(
sandNo number(10) not null,
autor varchar(255) not null,
subcontent varchar(500) not null, 
sandtime TIMESTAMP DEFAULT SYSTIMESTAMP
);

select * from mvboardSub;
drop * table mvboardSub;

select * from mvboard;
CREATE SEQUENCE no_seq;
drop table mvboard;
drop SEQUENCE no_seq;