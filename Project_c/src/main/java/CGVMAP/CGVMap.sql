select * from moviecenter;
drop table movieCenter;
insert into MovieCenter(CGVCenter,CGVCity) values('CGV����','����');

CREATE table movieCenter(
CGVCenter VARCHAR(255),
CGVCity VARCHAR(255),
CGVURL VARCHAR(255)
);

select cgvcity from moviecenter GROUP BY cgvcity;
select cgvcenter from moviecenter where cgvcity like '����';
select * from moviecenter where cgvcity like '';