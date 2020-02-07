USE Northwind;
--CREATE OR ALTER PROCEDURE Orders_by_date 
--@param1 DATE, @param2 DATE
--AS
--BEGIN
--  IF @param1 IS NULL OR @param2 IS NULL  SELECT * FROM orders WHERE OrderDate = GETDATE();
--  ELSE SELECT * FROM Orders WHERE OrderDate BETWEEN @param1 AND @param2;
--END;
EXEC Orders_by_date '1996-06-05', '1996-08-11';

