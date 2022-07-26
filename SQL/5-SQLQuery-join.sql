/*
Inner Joins, Full/left/right outer joins
*/

Select *
From EmployeeDemographics

Select *
From EmployeeSalary

Select *
From EmployeeDemographics
Inner Join EmployeeSalary -- default Join is inner join
	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

Select *
From EmployeeDemographics
Full outer Join EmployeeSalary 
	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

Select *
From EmployeeDemographics
Left Outer Join EmployeeSalary 
	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

Select *
From EmployeeDemographics
Right Outer Join EmployeeSalary 
	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

Select EmployeeDemographics.EmployeeID, FirstName,LastName, JobTitle, Salary
From EmployeeDemographics
Inner Join EmployeeSalary -- default Join is inner join
	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

Select EmployeeDemographics.EmployeeID, FirstName,LastName, JobTitle, Salary
From EmployeeDemographics
Right Join EmployeeSalary 
	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


Select EmployeeSalary.EmployeeID, FirstName,LastName, JobTitle, Salary
From EmployeeDemographics
Left Join EmployeeSalary
	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


Select EmployeeDemographics.EmployeeID, FirstName,LastName, Salary
From EmployeeDemographics
Inner Join EmployeeSalary
	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
Where FirstName <> 'Michael'
Order by Salary desc

Select JobTitle, AVG(Salary)
From EmployeeDemographics
Inner Join EmployeeSalary
	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
Where JobTitle = 'Salesman'
Group by JobTitle
