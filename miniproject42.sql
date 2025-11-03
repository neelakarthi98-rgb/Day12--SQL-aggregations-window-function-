create database mini42_db;
use mini42_db;
create table customer(order_id int primary key,customer_name varchar(50),order_date date,price decimal(10,2));
insert into customer values(101,'customer A','2025-01-05',500),(102,'customer B','2025-01-05',200),(103,'customer C','2025-01-05',100),(104,'customer A','2025-01-06',150),
(105,'customer B','2025-01-07',300),(106,'customer B','2025-01-08',250),(107,'customer C','2025-01-06',200);
select * from customer; 
select customer_name,order_id,order_date,row_number()over(partition by customer_name order by order_date)as row_num,
lag(order_date)over(partition by customer_name order by order_date)as previous_order_date from customer;
select customer_name,order_date,max(order_date)over (partition by customer_name)as last_order_date from customer;
