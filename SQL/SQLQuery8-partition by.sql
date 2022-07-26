/*
partition by
*/

SELECT FirstName, LastName, Gender, Salary, COUNT(Gender) over (partition by gender) as TotalGender
FROM EmployeeDemographics AS DEMO
JOIN EmployeeSalary AS SAL
	ON DEMO.EmployeeID = SAL.EmployeeID


SELECT FirstName, LastName, Gender, Salary, COUNT(Gender)
FROM EmployeeDemographics AS DEMO
JOIN EmployeeSalary AS SAL
	ON DEMO.EmployeeID = SAL.EmployeeID
GROUP BY FirstName, LastName, Gender, Salary


SELECT Gender, COUNT(Gender)
FROM EmployeeDemographics AS DEMO
JOIN EmployeeSalary AS SAL
	ON DEMO.EmployeeID = SAL.EmployeeID
GROUP BY Gender