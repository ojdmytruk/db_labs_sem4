USE Northwind;
--Task7
INSERT 
INTO Products (ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, 
               UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued)
VALUES ('Olesia', '1', '1', '1 body', 500, 1, 0, 0, 0),
       ('IS-71', '1', '2', '1 group', 500, 1, 0, 0, 0);
SELECT * FROM Products WHERE (ProductName='Olesia' OR ProductName='IS-71');