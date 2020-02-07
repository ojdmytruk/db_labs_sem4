USE Northwind;
--Task8
UPDATE Products
SET Discontinued= 'True'
WHERE Products.ProductID NOT IN (SELECT ProductID FROM [Order Details])
SELECT * FROM  Products
WHERE Discontinued= 'True';