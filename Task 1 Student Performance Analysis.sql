#Task 1 – Student Database
Create Database ABC_DB;
use ABC_DB;
#Create a table 
Create table STDB(Student_ID int auto_increment primary Key, Name varchar(50),Department varchar(50), Marks int);
insert  into STDB(Student_id,Name,Department,Marks) values(101,'John','CSE',90);
insert  into STDB (Name,Department,Marks)values('David','ECE',75),('Priya','IT',95),('Rahul','CSE',80),('Anu','ECE',70),('Karthik','IT',85);
Select * from STDB;
#Find the total number of students
Select count(*) from STDB;

#Find the highest marks scored.

Select max(Marks) from STDB; 

#Find the average marks of all students.

Select avg(Marks) from STDB;

#Display the number of students in each department

Select Department,count(*) as total_student from STDB group by department;

#Display only departments whose average marks are greater than 80.

SELECT Department,avg(Marks) AS Total_Students FROM STDB GROUP BY Department HAVING avg(Marks) > 80;