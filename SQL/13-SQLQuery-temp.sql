/*
Temp tables, before add #
*/

CREATE TABLE #temp_Employee ( 
EmployeeID int,
JobTitle varchar(100),
Salary int)

SELECT *
FROM #temp_Employee

INSERT INTO #temp_Employee VALUES
(1001, 'HR', 45000)


INSERT INTO #temp_Employee
SELECT *
FROM [ju-sql]..EmployeeSalary


DROP TABLE IF EXISTS #temp_Employee1  -- DROP ALLOW RECREATE SAME NAME TABLE
CREATE TABLE #temp_Employee1 (
JobTitle varchar(50),
EmployeePerJob int,
AvgAge int,
AvgSalary int)

INSERT INTO #temp_Employee1 
SELECT JobTitle, COUNT(JobTitle),Avg(Age),Avg(Salary)
FROM [ju-sql]..EmployeeDemographics EMP
JOIN [ju-sql]..EmployeeSalary SAL
	ON EMP.EmployeeID = SAL.EmployeeID
GROUP BY JobTitle

SELECT *
FROM #temp_Employee1

