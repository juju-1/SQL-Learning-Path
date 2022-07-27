/*
CTE COMMON TABLE EXPRESSION
*/

WITH CTE_Employee as (SELECT FirstName, LastName, Gender, Salary, COUNT(Gender) OVER (PARTITION BY Gender) as TotalGender, AVG(Salary) OVER (PARTITION BY Gender) as AvgSalary
FROM EmployeeDemographics EMP
JOIN EmployeeSalary SAL
	ON EMP.EmployeeID = SAL.EmployeeID
WHERE Salary > '45000')

SELECT *
FROM CTE_Employee

