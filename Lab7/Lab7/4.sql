--USE Northwind
--CREATE FUNCTION get_p(@cat INT)
--RETURNS TABLE

--RETURN
--(
--SELECT * FROM Products WHERE CategoryID = @cat
--);
--CREATE PROCEDURE prodact_proc
--	@cat1 INT,
--	@cat2 INT = -1,
--	@cat3 INT = -1,
--	@cat4 INT = -1,
--	@cat5 INT = -1
--AS
--BEGIN	
--	SET NOCOUNT ON;
--	SELECT * FROM dbo.get_p(@cat1)
--	UNION
--	SELECT * FROM dbo.get_p(@cat2)
--	UNION
--	SELECT * FROM dbo.get_p(@cat3)
--	UNION
--	SELECT * FROM dbo.get_p(@cat4)
--	UNION
--	SELECT * FROM dbo.get_p(@cat5)
--END;

EXEC prodact_proc 1,2;