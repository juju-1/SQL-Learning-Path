/*
STORED procedures
*/

create procedure TEST1
AS
SELECT *
FROM EmployeeDemographics

EXEC TEST1  -- RETURN SELECT STATEMENT




CREATE PROCEDURE TRY_1
AS
CREATE TABLE #TEM_TRY
(
JobTitle varchar(100),
EmployeePerJob int,
AvgAge int,
AvgSalary int)

insert into #TEM_TRY
select JobTitle, count(JobTitle), AVG(Age), AVG(Salary)
from EmployeeDemographics emp
join EmployeeSalary sal
	on emp.EmployeeID = sal.EmployeeID
group by JobTitle

SELECT *
FROM #TEM_TRY

EXEC TRY_1


-- after modify in procedure file add parameters @JobTitle
CREATE PROCEDURE try1
@JobTitle nvarchar(100)
AS
DROP TABLE IF EXISTS try1
Create table #try1 (
JobTitle varchar(100),
EmployeesPerJob int ,
AvgAge int,
AvgSalary int
)


Insert into #try1
SELECT JobTitle, Count(JobTitle), Avg(Age), AVG(salary)
FROM SQLTutorial..EmployeeDemographics emp
JOIN SQLTutorial..EmployeeSalary sal
	ON emp.EmployeeID = sal.EmployeeID
where JobTitle = @JobTitle --- make sure to change this in this script from original above
group by JobTitle

Select * 
From #try1
GO;


exec try1 @jobtitle = 'Salesman'
exec try1 @jobtitle = 'Accountant'


