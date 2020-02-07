use Northwind;
--Task1
INSERT INTO Employees
(LastName, FirstName, Title, TitleOfCourtesy, Address, City,
 PostalCode, Country, HomePhone, Extension, Photo, Notes, PhotoPath, Salary)
VALUES 
('Dmytruk', 'Olesia', 'Intern', 'Ms.', 'Akademika Yanhelia Street, 20', 'Kyiv', '04132', 'Ukraine', '(111) 222 3334 ', 500 ,'Photo', 'Note',
 'Path', 2500);
 SELECT * FROM Employees;
--Task2
UPDATE Employees SET Title='Director' WHERE LastName='Dmytruk';
SELECT * FROM Employees;
--Task3
SELECT  *
INTO OrdersArchive FROM Orders;
SELECT * FROM OrdersArchive;
--Task4
TRUNCATE TABLE OrdersArchive;
--Task5
INSERT INTO OrdersArchive
SELECT CustomerID,EmployeeID,OrderDate,RequiredDate,ShippedDate,ShipVia,Freight,ShipName,ShipAddress,ShipCity,ShipRegion,ShipPostalCode,ShipCountry FROM Orders
SELECT * FROM OrdersArchive
ORDER BY OrderDate;
--Task6
DELETE FROM OrdersArchive WHERE ShipCity='Berlin';
--Task7
INSERT 
INTO Products (ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, 
               UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued)
VALUES ('Olesia', '1', '1', '1 body', 500, 1, 0, 0, 0),
       ('IS-71', '1', '2', '1 group', 500, 1, 0, 0, 0);
SELECT * FROM Products WHERE (ProductName='Olesia' OR ProductName='IS-71');
--Task8
UPDATE Products
SET Discontinued= 'True'
WHERE Products.ProductID NOT IN (SELECT ProductID FROM [Order Details])
SELECT * FROM  Products
WHERE Discontinued= 'True';
--Task9
DROP TABLE OrdersArchive;
--Task10
DROP DATABASE Nnorthwind;
