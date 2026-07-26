#Task 5: Hospital Patient Analysis
Create Database Hospital_DB;
create Table Patient_Tab(Patient_ID int,Name varchar(50),Department varchar(50),Bill_Amount int);
insert into Patient_Tab values(1,'Ravi','Cardiology',12000),(2,'Anu','Neurology',15000),(3,'John','Cardiology',10000),(4,'Priya','Orthopedics',18000),(5,'David','Neurology',14000),(6,'Karthik','Cardiology',13000);
#Find the total bill amount collected.
select sum(Bill_Amount) from Patient_Tab;
#Find the average bill amount for each department
select Department,avg(Bill_Amount) as Avg_Bill from Patient_Tab group by Department;
#Find the minimum bill amount in each department.
select Department,min(Bill_Amount) as Min_Bill from Patient_Tab group by Department;
#Display departments whose total bill amount is greater than 25000.
select Department, sum(Bill_Amount) as Greater_Bill from Patient_Tab group by Department having sum(Bill_Amount)>25000;
#Display only patients whose bill amount is greater than 12000, then count them department-wise.
Select Department, count(*) as Bill_Count from Patient_Tab where Bill_Amount >=12000 group by Department;