#Task 4: Library Management Report
Use Library;
Create table Lib(Book_ID int,Book_Name varchar(50),Category varchar(50),Price int);
insert into Lib values(1,'SQL Basics','Programming',500),(2,'Java','Programming',700),(3,'Harry Potter','Novel',400),(4,'Wings of Fire','Biography',350),(5,'Python','Programming',800),(6,'The Alchemist','Novel',450);
Select * From Lib;
#Count the number of books in each category.
select Category,count(*) as Book_Count from Lib group by Category;
#Find the total price of books in each category.
select category,sum(price) as Total_Price from Lib group by Category;
#Find the average book price in each category.
select category, avg(price) as Avg_Price from Lib Group by Category;
#Display only categories having more than 1 book.
select category, count(*) as More_books from Lib group by category having count(*)>1;
#Display books with price greater than 400, then group them by category.
Select Category, count(*) as Book_Count from Lib where Price > 400 group by category;