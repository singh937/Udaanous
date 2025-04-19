use store;

CREATE TABLE purchases (
    CustomerID INT,
    PurchaseDate DATE,
    ReturnDate DATE
);
 

INSERT INTO purchases (CustomerID, PurchaseDate, ReturnDate) VALUES
(1, '2024-01-01', '2024-01-05'),
(2, '2024-01-02', '2024-01-06'),
(3, '2024-01-03', '2024-01-07'),
(4, '2024-01-04', '2024-01-08'),
(5, '2024-01-05', '2024-01-09'),
(6, '2024-01-06', '2024-01-10'),
(7, '2024-01-07', '2024-01-11'),
(8, '2024-01-08', '2024-01-12'),
(9, '2024-01-09', '2024-01-13'),
(10, '2024-01-10', '2024-01-14');

select * from purchases;

select date_format(purchaseDate,"%y-%M-%d") from purchases;



CREATE TABLE purchases2 (
    CustomerID INT,
    PurchaseDate DATE,
    ReturnDate DATE
);
 
-- Insert values
INSERT INTO purchases2 (CustomerID, PurchaseDate, ReturnDate) VALUES
(1, '2024-01-01', '2024-01-09'),
(2, '2024-01-02', '2024-01-16'),
(3, '2024-01-03', '2024-01-11'),
(4, '2024-01-04', '2024-01-08'),
(5, '2024-01-05', '2024-01-09'),
(6, '2024-01-06', '2024-01-10'),
(7, '2024-01-07', '2024-01-21'),
(8, '2024-01-08', '2024-01-29'),
(9, '2024-01-09', '2024-01-13'),
(10, '2024-01-10', '2024-01-24');

select * from purchases2;
select datediff(PurchaseDate ,ReturnDate ) from purchases2;

CREATE TABLE purchases3 (
    CustomerID INT,
    PurchaseDate DATE,
    ReturnDate DATE
);
 
-- Insert values
INSERT INTO purchases3 (CustomerID, PurchaseDate, ReturnDate) VALUES
(1, '2024-01-01', '2024-01-05'),
(2, '2024-01-02', '2024-01-06'),
(3, '2024-01-03', '2024-01-07'),
(4, '2024-01-04', '2024-01-08'),
(5, '2024-01-05', '2024-01-09'),
(6, '2024-01-06', '2024-01-10'),
(7, '2024-01-07', '2024-01-11'),
(8, '2024-01-08', '2024-01-12'),
(9, '2024-01-09', '2024-01-13'),
(10, '2024-01-10', '2024-01-14');

select year (ReturnDate) from purchases3;
select month (ReturnDate) from purchases3;
select day(ReturnDate) from purchases3;

create database pizza_store;
use pizza_store;
select * from order_Details
join pizzas
on pizzas.pizza_id = order_Details.pizza_id;

select * from pizzas
left  join pizza_types
on pizza_types.pizza_type_id = pizzas.pizza_type_id;

select * from pizzas
right join order_Details
on order_Details.pizza_id = pizzas.pizza_id;
select * from order_Details
cross join pizzas
on order_Details.pizza_id = pizzas.pizza_id;



 

