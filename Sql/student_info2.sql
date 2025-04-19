create database DB_2;
use DB_2;

CREATE TABLE  arjun_store3 (	
			employees_id int primary key,
            first_name varchar (50) not null,
            last_name varchar (50) not null,
            addrash varchar (100),
            pincode numeric unique
);
insert into arjun_store3 (employees_id, first_name, last_name, addrash, pincode) values
			(101, 'Ram', 'singh', 'nagpur', 440025),
            (102, 'shaym', 'sharma', 'mumbai', 123456),
            (103, 'arjun', 'yadav', 'mumbai', 123654),
            (104, 'tushar', 'thakur', 'nagpur', 440030),
            (105, 'sonu', 'gupta', 'delhi', 654987);
            
select * from arjun_store3;

select employees_id, sum(pincode) as total_pincode
from arjun_store3
group by employees_id
having sum(pincode) = 440025;

CREATE TABLE  arjun_store4 (	
			employees_id int primary key,
            first_name varchar (50) not null,
            last_name varchar (50) not null,
            addrash varchar (100),
            pincode numeric unique,
            phone numeric
            
);

insert into arjun_store4 (employees_id, first_name, last_name, addrash, pincode,phone) values
			(101, 'Ram', 'singh', 'nagpur', 440025,1234567890),
            (102, 'shaym', 'sharma', 'mumbai', 123456,1234567800),
            (103, 'arjun', 'yadav', 'mumbai', 123654,9874561230),
            (104, 'tushar', 'thakur', 'nagpur', 440030,9874563210),
            (105, 'sonu', 'gupta', 'delhi', 654987,9875236410);

select * from arjun_store4;

select employees_id
from arjun_store3
where exists (select phone from arjun_store4 where phone = employees_id);

CREATE TABLE student_info (
    StudentID INT PRIMARY KEY,
    FirstNames VARCHAR(50),
    LastNames VARCHAR(50)
);
 
-- Insert 10 values for each variable
INSERT INTO student_info (StudentID, FirstNames, LastNames) VALUES
(1, 'John', 'Doe'),
(2, 'Alice', 'Smith'),
(3, 'Bob', 'Johnson'),
(4, 'Emily', 'Brown'),
(5, 'Michael', 'Davis'),
(6, 'Sarah', 'Wilson'),
(7, 'David', 'Lee'),
(8, 'Jessica', 'Taylor'),
(9, 'Chris', 'Evans'),
(10, 'Emma', 'Thompson');

CREATE TABLE exam_info (
    StudentID INT PRIMARY KEY,
    Subjects VARCHAR(50),
    Scores integer
);
-- Insert 10 values for each variable
INSERT INTO exam_info (StudentID, Subjects, Scores) VALUES
(1, 'Math',  80),
(2, 'English',  75),
(3, 'Science',  78),
(4, 'Math',  60),
(5, 'English', 86),
(6, 'Science', 90),
(7, 'Science', 75),
(8, 'English', 75),
(9, 'Math',  55),
(10, 'Math',  67);

select * from student_info;
select * from exam_info;

select * from student_info where studentID =
any(select studentID from exam_info where Scores > 75);		

CREATE TABLE student_info2 (
    StudentID INT PRIMARY KEY,
    FirstNames VARCHAR(50),
    LastNames VARCHAR(50)
);
 
-- Insert 10 values for each variable
INSERT INTO student_info2 (StudentID, FirstNames, LastNames) VALUES
(1, 'John', 'Doe'),
(2, 'Alice', 'Smith'),
(3, 'Bob', 'Johnson'),
(4, 'Emily', 'Brown'),
(5, 'Michael', 'Davis'),
(6, 'Sarah', 'Wilson'),
(7, 'David', 'Lee'),
(8, 'Jessica', 'Taylor'),
(9, 'Chris', 'Evans'),
(10, 'Emma', 'Thompson');
									
CREATE TABLE exam_info2 (
    StudentID INT PRIMARY KEY,
    Subjects VARCHAR(50),
    Scores integer
);
 
-- Insert 10 values for each variable
INSERT INTO exam_info2 (StudentID, Subjects, Scores) VALUES
(1, 'Math',  80),
(2, 'English',  75),
(3, 'Science',  78),
(4, 'Math',  60),
(5, 'English', 86),
(6, 'Science', 90),
(7, 'Science', 75),
(8, 'English', 75),
(9, 'Math',  55),
(10, 'Math',  67);

SELECT *
FROM student_info2
WHERE StudentID = ANY (
    SELECT StudentID
    FROM exam_info2
    WHERE Scores > 75
);
            