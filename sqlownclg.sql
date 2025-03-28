 create database college;

use college;

create table dept(
id int primary key,
name varchar(50)

);

create table teacher(
id int primary key,
name varchar(50),
dept_id int,
foreign key  (dept_id) references dept(id)
);

create table student(
rollno int primary key,
name varchar(50),
marks int not null,
grade varchar(1),
city varchar(20)

);






insert into student(rollno, name , marks, grade ,city)
values
(1,"arjun",70,"B","pune"),
(2,"amit",75,"B","mumbai"),
(3,"akshraj",80,"A","pune"),
(4,"sanika",85,"A","mumbai"),
(5,"ankita",90,"A","delhi"),
(6,"vijaya",99,"A","pune");

select marks, city from student;

select distinct city from student;

select * from student where marks>80;

select * from student where marks > 80 and city ="pune";



select * from student where city in ("mumbai");

select * from student where city not in ("mumbai");

select * from student where marks > 80 limit 2;

select * from student order by city desc;

select * from student order by marks asc;

select max(marks) from student;
select avg(marks) from student;
select min(marks) from student;
select count(name) from student;

select city, name, count(name) 
from student group by city, name;

select * from student where marks > 90 limit 1;


select grade, count(rollno)
from student 
group by grade
order by  grade;


select count(name), city
from student 
group by city
having max(marks)>75;



select city from student
where grade = "A"
group by city
having max(marks) > 75
order by city desc;

SET SQL_SAFE_UPDATES = 0;

update student
set grade = "O" 
where grade ="A";

select * from student;

update student 
set marks = 90
where rollno = 1;

select * from student;

update student
set grade ="I"
where rollno = 4;



delete from student
where marks = 90;

select * from student
where marks > 80;

select max(marks)
from student;
update student
set marks =90
where rollno = 2;


alter table student 
add column age int;

alter table student 
drop column age ;

alter table student
modify age varchar(20);

alter table student
rename to stud;

select * from stud;


create table student(
id int primary key,
name varchar(30)
);

insert into student(id, name)
values
(101,"aksh"),
(102,"binod"),
(103,"arjun");

select * from student;

create table course(
id int primary key ,
course varchar(30)
);


insert into course (id, course)
values
( 102, "english"),
(105,"math"),
(103,"science"),
(107,"computer scince");

select * from course;

select *
from student as s 
inner join course as c
on s.id = c.id ;


select * 
from student as s
left join course as c
on s.id = c.id;


select * 
from student as s
right join course as c
on s.id = c.id;

select avg(marks)
from stud;

select name 
from stud
where marks > (select avg(marks)
from stud);

select rollno
from stud 
where rollno%2=0;

select name 
from stud
where rollno in (select rollno
from stud 
where rollno%2=0);
