create database mini41_db;
use mini41_db;
create table sales(sales_id int primary key,region varchar(50),amount decimal(10,2));
insert into sales values(001,'Region A',20000),(002,'Region B',15000),(003,'Region A',10000),(004,'Region C',5000),(005,'Region B',30000),
(006,'Region C',45000),(007,'Region A',3000),(008,'Region D',25000);
select * from sales; 
select region,sum(amount) as total_amount from sales group by region;
select *, rank()over (order by total_amount desc) as sales_rank from(select region,sum(amount) as total_amount from sales group by region) as region_sales;