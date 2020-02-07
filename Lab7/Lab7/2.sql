USE Northwind;
--DECLARE @gender VARCHAR(10);
--CREATE OR ALTER PROCEDURE Check_Gender  
--	@gender VARCHAR (10)
--AS
--  BEGIN
--    IF @gender='F'
--      SELECT FirstName, LastName FROM employees WHERE TitleOfCourtesy='Ms.' OR TitleOfCourtesy='Mrs.';
--    ELSE IF @gender='M'
--      SELECT FirstName, LastName FROM employees WHERE TitleOfCourtesy='Mr.';
--    ELSE
--      SELECT 'Unknown parameter' AS Error;
--    --END;
--  END;
EXEC Check_Gender 'F';