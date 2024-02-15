
CREATE table movieCenter(
CGVCenter VARCHAR(255),
CGVCity VARCHAR(255),
CGVURL VARCHAR(255)
);

create table cgv_movie(
mvrank int primary key,
mvScore varchar(255),
mvtitle varchar(255),
mvDirectorName varchar(255),
mvActors varchar(255),
mvinfo varchar(255),
mvReleaseDate varchar(255),
mvgenre varchar(255),
mvpos varchar(255)
);

create table cgv_member  (
   mbId varchar(25) primary key,
   mbPw varchar(25) not null,
   mbIrum varchar(100) not null,
   mbEmail varchar(100) not null,
   mbBirthYear varchar(4) not null,
   mbPoint int not null,
   mbAdmin varchar(1)
);

create table if not exists cgv_movie (
   mvId bigint primary key,
   mvName varchar(255) not null,
   mvOnAir varchar(1) not null,
   mvGenre varchar(100) not null,
   mvNation varchar(100) not null,
   mvShowTime bigint not null,
   mvReleaseDate varchar(100) not null,
   mvDirectorName varchar(255) not null,
   mvActors varchar(255) not null,
    mvSynopsis varchar(500) not null,
    mvPrice bigint
);
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

select * from cgv_member;
select * from cgv_movie;
select * from cgv_name;
select * from movieCenter;
select * from mvboard;
select * from mvboardSub;
drop table cgv_movie;