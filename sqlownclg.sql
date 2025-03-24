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

select * from student;