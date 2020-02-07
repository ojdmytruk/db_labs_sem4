GO
Declare @date date, @id int;
Declare @cid int;
USE LazyStudent;


DECLARE cours CURSOR FOR
SELECT ClientID,RegDate FROM Clients

OPEN cours
FETCH NEXT FROM cours 
INTO @id,@date

WHILE @@FETCH_STATUS=0
BEGIN
Update Clients
SET @cid=ClientID
        IF DATEDIFF(year, @date,GETDATE()) = 1
      Update Discounts
      SET Discounts.Discount = 0.05 Where @cid = @id
    ELSE IF DATEDIFF(year, @date,GETDATE()) = 2
      Update Discounts
      SET Discounts.Discount = 0.08 Where @cid = @id
    ELSE IF DATEDIFF(year, @date,GETDATE()) = 3
      Update Discounts
      SET Discounts.Discount = 0.11 Where @cid = @id
    ELSE IF DATEDIFF(year, @date,GETDATE()) = 4
      Update Discounts
      SET Discounts.Discount = 0.15 Where @cid = @id
        Else 
    Update Discounts
       SET Discounts.Discount = 0 Where @cid = @id
  FETCH NEXT FROM cours INTO @id,@date
END;
CLOSE cours ; 
DEALLOCATE cours;