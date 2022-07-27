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

EXEC TRY_1 @JobTitle = 'Salesman'