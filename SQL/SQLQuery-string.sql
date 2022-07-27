/*
string functions - trim, ltrim, rtrim, replace, substring, upper, lower
*/

-- Drop table employeeErrors

CREATE TABLE EmployeeErrors (
EmployeeID varchar(50)
,FirstName varchar(50)
,LastName varchar(50)
)

Insert into EmployeeErrors Values 
('1001  ', 'Jimbo', 'Halbert')
,('  1002', 'Pamela', 'Beasely')
,('1005', 'TOby', 'Flenderson - Fired')

Select *
From EmployeeErrors

--using trim, ltrim, rtrim

Select EmployeeID, TRIM(EmployeeID) as IDTRIM
FROM EmployeeErrors

Select EmployeeID, LTRIM(EmployeeID) as IDTRIM
FROM EmployeeErrors

Select EmployeeID, RTRIM(EmployeeID) as IDTRIM
FROM EmployeeErrors


--using replace
Select LastName, replace(LastName, '- Fired', '') as LastNameFixed
FROM EmployeeErrors


--using substring

select *
from EmployeeErrors

Select SUBSTRING(FirstName,1,3) 
FROM EmployeeErrors

Select SUBSTRING(FirstName,3,3) 
FROM EmployeeErrors


Select err.FirstName, demo.FirstName
from EmployeeErrors err
join EmployeeDemographics demo
	on err.FirstName = demo.FirstName


Select substring(err.FirstName, 1,3), substring(demo.FirstName,1,3)
from EmployeeErrors err
join EmployeeDemographics demo
	on substring(err.FirstName, 1,3) = substring(demo.FirstName,1,3)


--gender
--lastname
--age
--DOB



-- using UPPER AND LOWER
Select FirstName, lower(FirstName)
FROM EmployeeErrors

Select FirstName, upper(FirstName)
FROM EmployeeErrors

