Show databases;
------1
create database Assignment;
use assignment;
-------3
create table Countries(Name varchar(25),Capital varchar(25),population int); 
insert into Countries values ("China","Beijing",1382),("India","Delhi",1326),("united States","Washington D.C",324),("Indonesia","Jakarta",260),
("Brazil","Brasilla",209),("Pakistan","Islamabad",193);
insert into countries values ("Nigeria","Abuja",187),("Bangladesh","Dhaka",163),("Russia","Mascow",143),("Mexico","Mexico city",128),("Japan","tokyo",126),
("Phillppines","Manila",102),("Ethiopia","Addis Ababa",101),("Vietham","Hanoi",94),("Egypt","Cairo",93),("Germeny","Berlin",81),("Iran","Tehran",80),("Turkey","Ankara",79),
("Congo","Kinshana",79),("France","Paris",64),("United Kingdom","London",65),("Italy","Rome",60),("South Africa","Pretoria",55),("Myanmar","Naypyidaw",54);
select * from countries;
insert into countries values ("Australia","Canberra",52),("Maldives","Male",50);
set sql_safe_updates=0;
update countries set capital="New Delhi" where capital="Delhi";
-------4
rename table countries to big_countries;
-------5
create table suppliers(supplier_id int primary key,
supplier_name varchar(25),
location varchar(25));
drop table if exists product;
create table product(product_id int primary key,
product_name varchar(25) not null unique,
description varchar(50),
supplier_id int,foreign key(supplier_id) references suppliers(supplier_id));
create table stock(id int primary key,
product_id int, foreign key(product_id) references product(product_id),
balance_stock int);  
------6
insert into suppliers values(1,"Srinu","USA"),(2,"sravanri","Canada");
insert into product values(11,"laptop","electronics",1),(22,"bike","vehicle",2);
insert into stock values(1,11,111),(2,22,222);
--------7
alter table suppliers modify supplier_name varchar(25) not null unique;
--------8,9
create table emp(emp_id int,emp_no int,first_name varchar(25),last_name varchar(25),salary int);
alter table emp add column dept_no int;
update emp set dept_no = case when
emp_no%2=0 then 20 when 
emp_no%3=0 then 30 when
emp_no%4=0 then 40 when
emp_no%5=0 then 50 else 10
end;
alter table emp modify emp_id int unique;
-------10
create view emp_sal as select emp_no,first_name,last_name,salary from emp;
select * from emp_sal;

