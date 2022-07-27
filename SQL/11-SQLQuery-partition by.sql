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

SELECT FirstName, LastName, Gender, Salary, COUNT(Gender) OVER (PARTITION BY Gender) as TotalGender, AVG(Salary) OVER (PARTITION BY Gender) as AvgSalary
FROM EmployeeDemographics EMP
JOIN EmployeeSalary SAL
	ON EMP.EmployeeID = SAL.EmployeeID
WHERE Salary > '45000'
