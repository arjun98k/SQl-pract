
create database aki;
use aki;

create table aksh (
id int primary key,
name varchar(40),
age int not null
);

insert into aksh values(1,"Arjun",23);
insert into aksh values(2,"lotus",22);
insert into aksh values(3,"adi",24);
select name from aksh;