#Task 2: Employee Salary Report
use EMP_DB;
Select * from Employee;
insert into Employee values(6,'Naresh',65000,'IT');
#Find the total salary of all employees.
Select sum(Salary) from Employee;
#Find the average salary of each department.
insert into Employee values(7,'Mani',75000,'IT');
UPDATE Employee SET Department='HR' where Emp_ID=3;
Select department,avg(salary) as Avg_Emp from Employee group by department;
#Display the highest salary in each department.
SELECT Department,max(Salary) AS Hig_Salary_Emp FROM Employee GROUP BY Department;
#Display departments whose total salary is greater than 90000.
select department, sum(Salary) as Greater from Employee group by Department having sum(Salary)>90000;
#Display only employees with salary greater than 50000, then group them by department and count the employees.
Select Department, count(*) as Employee_Greater from  Employee where Salary > 50000 group by Department;


