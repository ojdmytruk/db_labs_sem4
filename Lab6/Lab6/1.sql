use Northwind;
declare  @t table ( name varchar(255), num_of_rows int)
insert into @t
exec sp_msforeachtable N'sp_sqlexec''select''''?'''',count(*)from ? with(nolock)''';     
select * from @t