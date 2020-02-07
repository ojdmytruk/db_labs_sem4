use Northwind;
--Task5
INSERT INTO OrdersArchive
SELECT CustomerID,EmployeeID,OrderDate,RequiredDate,ShippedDate,ShipVia,Freight,ShipName,ShipAddress,ShipCity,ShipRegion,ShipPostalCode,ShipCountry FROM Orders
SELECT * FROM OrdersArchive;