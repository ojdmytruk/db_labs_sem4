USE Northwind;
--Task6
SELECT * FROM OrdersArchive WHERE ShipCity='Berlin';
DELETE FROM OrdersArchive WHERE ShipCity='Berlin';
SELECT * FROM OrdersArchive WHERE ShipCity='Berlin';