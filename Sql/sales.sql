create database sales;
use sales;
 create table sales_date (
		order_id int,
        customer_id int,
        product_id text (15),	
        product_name varchar (30),
        category varchar (20),
        quantity int,
        price int,
        order_date date,
        region varchar (10)
);   
select * from sales_data;
select * from employees;
drop table employees;
select sum(quantity * price) as total_sales
from sales_data;
drop table sales_data;
create table sales_data(
		order_id int,
        customer_id int,
        product_id varchar (15),	
        product_name text (30),
        category text (20),
        quantity int,
        price int,
        order_date date,
        region text (10)
);   
select sum(quantity * price) as total_sales
from sales_data;
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(quantity * price) AS total_sales
FROM sales_data
GROUP BY month
ORDER BY month;
SELECT DATE_FORMAT(order_date, '%Y-%m') AS YYYY_MM,
    SUM(quantity * price) AS total_sales
FROM sales_data
GROUP BY YYYY_MM
ORDER BY YYYY_MM;
SELECT product_name,
    SUM(quantity * price) AS total_revenue
FROM sales_data
GROUP BY product_name
ORDER BY total_revenue 
DESC LIMIT 5;
select region,
	sum(quantity * price) as total_sales
from sales_data
group by region
order by total_sales desc;    
select * from sales_Data;
select customer_id,count(order_id) as total_order from sales_data
group by customer_id
order by total_order desc limit 10;
select * from sales_Data;
select category,sum(price * quantity) as total_sales,round(sum(price * quantity) * 100.0 / (select sum(price * quantity) from sales_data),2) as sales_percentage
from sales_data 
group by category;
select customer_id,count(order_id) as total_order from sales_Data
group by customer_id
having total_order >1; 