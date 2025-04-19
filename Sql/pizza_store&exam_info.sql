create database uddanous;

use uddanous;
show tables;
select * from courses_data;
select min(course_level) from courses_data;
select avg(course_level) from courses_Data;
select max(course_level) from courses_Data;
select * from courses_Data;
select * from student_information;
use pizza_store;
select * from order_details;
select pizzas.price div order_Details.quantity as OUTPUT from pizzas
join order_details
on order_Details.pizza_id = pizzas.pizza_id;
use uddanous;
select count(student_id) as total_count from student_information;
use pizza_store;
select round(sum(order_Details.quantity * pizzas.price),2) as total_revenue from order_Details
join pizzas
on pizzas.pizza_id = order_Details.pizza_id;
use uddanous;
select * from student_information;
alter table student_information
add column credibility int;
select * from student_information;
update student_information set credibility = -25;
set sql_safe_updates=0;
select * from student_information;
select abs(credibility) from student_information;


CREATE TABLE exam_info (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    FirstNames VARCHAR(50),
    LastNames VARCHAR(50),
    Scores integer
);
 
 
INSERT INTO exam_info (FirstNames, LastNames, Scores) VALUES
('John', 'Doe',  80),
('Alice', 'Smith',  75),
('Bob', 'Johnson',  78),
('Emily', 'Brown',  60),
('Michael', 'Davis', 86),
('Sarah', 'Wilson', 90),
('David', 'Lee', 75),
('Jessica', 'Taylor', 75),
('Chris', 'Evans',  55),
('Emma', 'Thompson',  67);

select * from exam_info;

select min(Scores) from exam_info;
select avg(Scores) from exam_info;
select count(Scores) from exam_info;
select sum(Scores) from exam_info;
select abs(Scores) from exam_info;
select power(Scores,2) from exam_info;
select round(Scores,2.5) from exam_info;
select sqrt(Scores) from exam_info;

alter table exam_info
add column start_date date,
add column end_date date;

alter table exam_info
drop column start_date,
drop column end_date;

UPDATE exam_info
SET start_date = '2025-04-17',
    end_date = '2025-05-17';
