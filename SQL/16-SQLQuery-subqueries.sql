/*
Subqueries ( in the select, from, and where statement)
*/

select *
from EmployeeSalary

-- Subquery in select

Select EmployeeID, Salary, (Select AVG(Salary) From EmployeeSalary) as AllAvgSalary
From EmployeeSalary

-- How to do it with Partition by

Select EmployeeID, Salary, AVG(Salary) over () as AllAvgSalary
From EmployeeSalary


-- why group by does not work
Select EmployeeID, Salary, AVG(Salary) as AllAvgSalary
From EmployeeSalary
Group by EmployeeID,Salary
order by 1,2


-- subquery in from
Select A.EmployeeID, A.AllAvgSalary
From (Select EmployeeID, Salary, AVG(Salary) over () as AllAvgSalary
 From EmployeeSalary) A


 -- SUBQUERY IN WHERE
Select EmployeeID, JobTitle, Salary
From EmployeeSalary
Where EmployeeID in (
	Select EmployeeID
	From EmployeeDemographics
	Where Age > 30)
