create database mini44_db;
use mini44_db;
create table customer(order_id int primary key,customer_name varchar(50),order_date date,price decimal(10,2));
insert into customer values(101,'customer A','2025-01-05',500),(102,'customer B','2025-01-05',200),(103,'customer C','2025-01-05',100),(104,'customer A','2025-01-06',150),
(105,'customer B','2025-01-07',300),(106,'customer B','2025-01-08',250),(107,'customer C','2025-01-06',200);
select * from customer;
insert into customer values(108,'customer A','2025-01-15',300),(109,'customer B','2025-02-01',150),(110,'customer C','2025-02-10',100);
select * from customer;
select customer_name,order_id,order_date,
lag(order_date)over(partition by customer_name order by order_date)as previous_order_date,DATEDIFF(order_date, LAG(order_date) OVER (
            PARTITION BY customer_name
            ORDER BY order_date
        )) AS days_between from customer;
