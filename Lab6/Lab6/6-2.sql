use Northwind
go
create trigger del_orders
ON [Orders]
AFTER DELETE
AS
BEGIN
  INSERT INTO 
    OrdersArchive(CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry, DeletionDateTime, DeletedBy) 
  SELECT
    CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry, getDate(), CURRENT_USER
  FROM deleted;
END;
--drop trigger del_orders
