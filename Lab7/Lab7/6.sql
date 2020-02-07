USE Northwind;
--CREATE OR ALTER FUNCTION FullName
--	(@TitleOfCourtesy VARCHAR(5), @FirstName VARCHAR(20), @LastName VARCHAR(20)) RETURNS VARCHAR(30)
--  AS
--  BEGIN
--    RETURN(CONCAT(@TitleOfCourtesy, ' ', @FirstName, ' ', @LastName));
--  END;
SELECT dbo.FullName('Dr.', 'Yevhen', 'Nedashkivskiy') AS 'Result';
DECLARE @first_name NVARCHAR(50),@title NVARCHAR(50),@last_name NVARCHAR(50);
DECLARE @res_table TABLE (Result NVARCHAR(100));
DECLARE curs_ CURSOR FOR SELECT TitleOfCourtesy,FirstName,LastName FROM Employees;
OPEN curs_;
FETCH NEXT FROM curs_ INTO @title,@first_name,@last_name;  
WHILE @@FETCH_STATUS = 0  
BEGIN
	INSERT INTO @res_table(Result) VALUES(dbo.FullName(@title,@first_name,@last_name));
	FETCH NEXT FROM curs_ INTO @title,@first_name,@last_name;
END;  
SELECT*FROM @res_table;
CLOSE curs_;
DEALLOCATE curs_;