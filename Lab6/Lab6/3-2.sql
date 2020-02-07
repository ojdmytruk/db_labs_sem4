use Northwind
go
declare @deny_name varchar (50);
declare deny_cursor cursor for
select TABLE_NAME from INFORMATION_SCHEMA.TABLES where (TABLE_NAME like 'prod%'); 

open deny_cursor
fetch next from deny_cursor
into @deny_name

while @@FETCH_STATUS<>0
begin
	use Northwind
	deny execute on dbo.[@deny_name] to TestUser
	fetch next from deny_cursor
	into @deny_name
end
close deny_cursor;
--deallocate deny_cursor;