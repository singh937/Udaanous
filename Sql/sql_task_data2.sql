create database uddanous_2;
use uddanous_2;

create table orders (
		order_id int ,
        customer_id int,
        product_id int,
        quantity int,
        order_date date
);        
desc orders;

select * from orders;
select * from customers;
select first_name, city from customers;
select * from products;
select customers.last_name,products.product_name,sum(products.price * orders.quantity) as total_revenue from orders
join customers
on customers.customer_id = orders.customer_id
join products
on products.product_id = orders.product_id
group by customers.last_name,products.product_name
order by total_revenue;
select * from orders;
select * from orders where year(order_date) = 2024 and month(order_date) = 03;
select * from products;
select products.product_name,count(orders.order_id)as order_count from products
join orders
on orders.product_id = products.product_id
group by products.product_name;
select products.product_name,sum(products.price * orders.quantity) as total_revenue from products
join orders
on orders.order_id = products.product_id
group by products.product_name
order by total_revenue;
select customers.first_name,sum(products.price * orders.quantity) as total_spent from orders
join products
on products.product_id = orders.product_id
join customers
on customers.customer_id = orders.customer_id
group by customers.first_name
order by total_spent desc;

select customers.first_name,customers.city,avg(products.price * orders.quantity) as average_spent from orders
join customers
on customers.customer_id = orders.customer_id 
join products
on products.product_id = orders.product_id
group by customers.first_name,customers.city
order by average_spent desc limit 1;
