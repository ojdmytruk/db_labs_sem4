USE Northwind;
--CREATE OR ALTER FUNCTION ListOfCustomers(@company_name NVARCHAR(50))
--RETURNS TABLE
--AS
--RETURN
--(
--SELECT Customers.CompanyName FROM Suppliers 
--JOIN Products ON Products.SupplierID = Suppliers.SupplierID
--JOIN [Order Details] ON Products.ProductID = [Order Details].ProductID
--JOIN Orders ON Orders.OrderID = [Order Details].OrderID
--JOIN Customers ON Customers.CustomerID = Orders.CustomerID
--WHERE Suppliers.CompanyName = @company_name
--);
SELECT * FROM ListOfCustomers('Bigfoot Breweries');