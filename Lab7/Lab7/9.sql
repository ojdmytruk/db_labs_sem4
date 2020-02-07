USE Northwind;
--CREATE FUNCTION EmployeeInfo(@country NVARCHAR(50))
--RETURNS TABLE
--AS
--RETURN
--(
--SELECT * FROM Employees WHERE Country = @country
--);
SELECT * FROM EmployeeInfo('USA');