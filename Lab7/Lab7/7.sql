--USE Northwind
--CREATE FUNCTION CountPrice(@unit_price INT, @quantity INT, @discount INT)
--RETURNS INT
--AS
--BEGIN
--    DECLARE  @price INT;
--	SET @price = (1-@discount)*@unit_price*@quantity;
--	RETURN (@price);
--END;
SELECT  dbo.CountPrice(12,13,0.5) AS 'Result';
SELECT UnitPrice, Quantity, Discount FROM [Order Details];
DECLARE @unit_price INT, @quantity INT, @discount INT, @order NVARCHAR(50);
DECLARE @res_table TABLE (OrderId NVARCHAR(50),Price INT);
DECLARE cur CURSOR FOR SELECT OrderID,UnitPrice, Quantity, Discount FROM [Order Details];
OPEN cur;
FETCH NEXT FROM cur INTO  @order, @unit_price,@quantity,@discount;  
WHILE @@FETCH_STATUS = 0  
BEGIN
	INSERT INTO @res_table(OrderId,Price) VALUES(@order,dbo.CountPrice(@unit_price,@quantity,@discount));
	FETCH NEXT FROM cur INTO @order, @unit_price,@quantity,@discount;
END;  
SELECT*FROM @res_table;
CLOSE cur;
DEALLOCATE cur;
--DROP FUNCTION CountPrice;