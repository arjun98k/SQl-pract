
create database aki;
create database if not exists aki;
use aki;

create table aksh (
id int primary key,
name varchar(40),
age int not null
);

insert into aksh values(1,"Arjun",23);
insert into aksh values(2,"lotus",22);
insert into aksh values(3,"adi",24);
insert into aksh values(5,"asif",26);
select name , age from aksh;
show databases;