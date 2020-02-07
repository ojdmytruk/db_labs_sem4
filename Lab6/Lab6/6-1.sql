use Northwind;

create table OrdersArchive ( 
    CustomerID varchar(50) , 
    EmployeeID varchar(50) , 
    OrderDate varchar(50) , 
    RequiredDate varchar(50) ,
  ShippedDate varchar(50) ,
  ShipVia varchar(50) ,
  Freight varchar(50) ,
  ShipName varchar(50) ,
  ShipAddress varchar(50) ,
  ShipCity varchar(50) ,
    ShipRegion varchar(50) ,
  ShipPostalCode varchar(50),
  ShipCountry varchar(50) ,
  DeletionDateTime varchar(50),
  DeletedBy varchar(50)
) 
