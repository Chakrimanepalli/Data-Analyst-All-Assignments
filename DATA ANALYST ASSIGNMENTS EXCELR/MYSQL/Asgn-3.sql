use assignment;
------ assignment_3
select * from customers;
select customernumber,customername, state from customers;
------
select * from employee;
select fname from employee order by salary desc limit 1 offset 2;
select fname,salary,rank() over (order by salary desc) from employee;
