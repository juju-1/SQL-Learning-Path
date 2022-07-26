/*
Aliasing
*/

SELECT FirstName as Fname
FROM EmployeeDemographics

SELECT FirstName + ' ' + LastName as FullName
FROM EmployeeDemographics

SELECT AVG(Age) AS AvgAge
FROM EmployeeDemographics

SELECT Demo.EmployeeID, Sal.Salary
FROM EmployeeDemographics as Demo
Join EmployeeSalary as Sal
on demo.EmployeeID = Sal.EmployeeID

SELECT Demo.EmployeeID, Demo.FirstName, Demo.LastName, Sal.JobTitle, Ware.Age
FROM EmployeeDemographics AS Demo
LEFT JOIN EmployeeSalary AS Sal
ON Demo.EmployeeID = Sal.EmployeeID
LEFT JOIN WareHouseEmployeeDemographics AS Ware
ON Demo.EmployeeID = Ware.EmployeeID