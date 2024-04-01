use assignment;
drop table if exists employee;
create table employee (empid integer, fname varchar(30), lname varchar(30), deptno tinyint, salary decimal(10,2));

insert into employee values(100,'Jon','Hamm',10,2000);
insert into employee values(200,'Tom','Cruise', 10, 3000),(300,'Hugh','Laurie',20,7500),(400,'Tom','Hanks',30,750);      
insert into employee values(500,'Johnny','Depp', 20, 1300),(600,'Hugh','Grant',30,850),(700,'Ben','Affleck',30,75),(800,'George','Clooney',10,10000);
insert into employee values(900,'Henry',Null, 10, 3000),(1000,'Gregory','House',20,3500);
insert into employee values(1100,'Jean','Hackman',10,2700);
select * from employee;
select * from employee where deptno =10 and salary>3000;
select * from students;
select * from students where marks >=40 and marks <=50;
select * from students where marks >=50 and marks <=80;
select * from students where marks >=80 and marks <=100;
select count(*) from students where marks >=50 and marks <=80;
select count(*) from students where marks >=80 and marks <=100;
select * from station;
select distinct city from station where id%2=0;
select count(city) - count(distinct city) from station;
select distinct city from station where left(city,1) in  ('a','e','i','o','u');
select distinct city from station where left(city,1) in ('A', 'E','I','O','U') and right(city,1) in ('A', 'E','I','O','U');
select distinct city from station where left(city,1) not in  ('a','e','i','o','u');
select distinct city from station where left(city,1) not in ('A', 'E','I','O','U') and right(city,1) not in ('A', 'E','I','O','U');
select * from emp;
SELECT * FROM Emp WHERE Salary > 2000 AND Hire_Date >= DATE_SUB(CURRENT_DATE, INTERVAL 36 MONTH) ORDER BY salary desc;
select * from employee;
select deptno, sum(salary) from employee group by deptno;
select * from city;
select count(*) from city where population > 100000;
select sum(population) from city where district= "california";
select countrycode,avg(population) from city group by countrycode;
select * from customers;
select * from orders;
select O.ordernumber,O.status,O.customernumber,C.customername,O.comments 
from orders as O join customers AS C  on O.customernumber= C.customernumber where status = "disputed";

