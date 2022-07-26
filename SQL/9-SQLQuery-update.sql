/*
updating/deleting data
*/

SELECT *
FROM EmployeeDemographics

UPDATE EmployeeDemographics
--SET EmployeeID = 1012
SET Age = 32, Gender = 'Female'
WHERE FirstName = 'Holy'

UPDATE EmployeeDemographics
SET FirstName = 'Darryl', Age = 39
WHERE EmployeeID = 1013

DELETE FROM EmployeeDemographics    -- THIS METHOD CANNOT RETRIEVE DATA
WHERE EmployeeID = 1005

SELECT *
FROM EmployeeDemographics
WHERE EmployeeID = 1016      -- BEFORE DELETE YOU MAY REVIEW WHAT YOU WANT TO DELETE
