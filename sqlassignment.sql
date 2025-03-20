create database employee;
use employee;

create table empinfo(
id int primary key,
name varchar(50),
salary int
);

insert into empinfo values(1,"arjun",25000);
insert into empinfo values(2,"aditi",26000);
insert into empinfo values(3,"amit",24000);
insert into empinfo(id,name,salary)
values
(11,"akshraj",26000),
(22,"takshraj",27000);

select* from empinfo;
