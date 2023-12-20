--1
create table Customer (
Customer_Name varchar(67),
Customer_City varchar(67),
Customer_Country varchar(67),
Time_Zone varchar(67),
Account_No varchar(67)
);

create table Loan (
Customer_Name varchar(67),
Loan_Number varchar(67),
Amount int
);

create table Student (
Student_Name varchar(67),
CGPA float,
Sesssion varchar(67)
);

insert into Customer values ( 'Galvin', 'Athens', 'Greece', 'GMT-4', 'AC452')
insert into Customer values ( 'Smith', 'Easter Island', 'Chile', 'GMT-6', 'AC857')
insert into Customer values ( 'Jony', 'Athens', 'USA', 'GMT-7', 'AC325')
insert into Customer values ( 'Ronald', 'Baltimore', 'USA', 'GMT-7', 'AC665')
select * from Customer

insert into Loan values ( 'Jony', 'L-174', 25000)
insert into Loan values ( 'Michel', 'P-857', 32000)
insert into Loan values ( 'Ronald', 'K-658', 12580)
insert into Loan values ( 'Rakesh', 'J-582', NULL)
select * from Loan

insert into Student values ( 'Sara', 3.86, 'Summer15')
insert into Student values ( 'Rakesh', 3.24, 'Summer16')
insert into Student values ( 'Wadud', 3.69, 'Spring14')
insert into Student values ( 'Simran', 3.55, 'Fall13')
select * from Student

--2
select Customer_Name from Customer
where Customer_Country = 'USA'
order by Customer_Name asc;

--3
select Customer_Name from Loan where Amount > (select avg(Amount) from Loan)

--4
select count(*) as Number_of_row from Customer

--5
select max(Amount) as Highest, min(Amount) as Lowest, avg(Amount) as Average from Loan  

--6
select Student_Name, CGPA from Student where CGPA between 3.55 and 3.99

--7
delete from Student where Student_Name in (select Student_Name from student where CGPA < 3.50)
select * from Student
