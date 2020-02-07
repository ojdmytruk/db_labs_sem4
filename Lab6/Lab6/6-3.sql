use Northwind;
--DROP TABLE OrdersArchive
delete from [Order Details] where OrderID = 10248;
delete from Orders where OrderID = 10248;
select * from OrdersArchive;
--SELECT * FROM Orders;