use Shop_DB;
Create table Product_Tab(Product_ID int Primary key, Product_Name varchar(50),Category Varchar(50),Price int);
insert into Product_Tab values(101,'Laptop','Electronics',50000),(102,'Mobile','Electronics',25000),(103,'Chair','Furniture',5000),(104,'Table','Furniture',8000),(105,'Shoes','Fashion',3000),(106,'Watch','Fashion',7000);
#Find the total number of products.
select count(Product_Name) from Product_Tab; 
#Find the average price in each category.
Select Category,avg(Price) as Avg_Price from Product_Tab group by Category;
#Find the maximum price in each category.
Select Category,max(Price) as Max_Price from Product_Tab group by Category;
#Display categories whose average price is greater than 10000.
select Category, avg(price) as Greater from Product_tab group by Category having Avg(Price)>10000;
#Display only products with price greater than 5000, then count how many products are available in each category
Select Category,count(*) AS Product_Count from Product_Tab where Price > 5000 group by Category;