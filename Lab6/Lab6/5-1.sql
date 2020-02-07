use Northwind;
create table Contacts 
	(ContactID int not null primary key, 
	LastName varchar(50), 
	FirstName varchar(50),
	PersonalPhone varchar(10), 
	WorkPhone varchar(10), 
	Email varchar(50), 
	PreferableNumber varchar(10));
 
