use Dmytruk;
alter table Student 
add CurrentAge as datediff(year,BirthDate,getdate());