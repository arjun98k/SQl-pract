create database college;

use college;

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