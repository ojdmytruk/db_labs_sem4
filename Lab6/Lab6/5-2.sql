use Northwind
go
create trigger Con_trigger
on [Contacts]
instead of insert
as
if (select WorkPhone from inserted) is not null
insert into Contacts (ContactID, LastName,WorkPhone, PreferableNumber)
select ContactID, LastName, WorkPhone, WorkPhone from inserted
else 
insert into Contacts (ContactID, LastName, PersonalPhone, PreferableNumber)
select ContactID, LastName, PersonalPhone, PersonalPhone from inserted;
--drop trigger Con_trigger;