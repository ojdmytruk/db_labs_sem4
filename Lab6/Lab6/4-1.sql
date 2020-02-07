use Northwind
go
create trigger phone_paste
on Customers
instead of insert
as 
insert into Customers (CustomerID,CompanyName, Phone)
select CustomerID, CompanyName, (replace(translate([Phone],'abcdefghijklmnopqrstuvwxyz+()- ,#+.', '@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@'), '@', ''))
from inserted;
--drop trigger phone_paste;