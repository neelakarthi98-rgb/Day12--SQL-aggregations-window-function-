create database mini43_db;
use mini43_db;
create table employee(emp_id int primary key,emp_name varchar(50),department_name varchar(50),performance_score decimal(10,2));
insert into employee values(101,'priya','HR',3.5),(102,'Ram','HR',4),(103,'Ashok','IT',3),(104,'vino','finance',4),(105,'Uma','IT',4.5),(106,'krish','Finance',5);
select * from employee;
insert into employee values(107,'siva','finance',5),(108,'karthick','HR',3.5),(109,'arul','HR',3),(110,'Madhu','IT',4.5);
select * from employee;
select * ,dense_rank()over(partition by department_name order by performance_score desc) as Den_rank from employee;