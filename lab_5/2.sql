use Dmytruk;
create table Student (
	StudentID int not null identity(1,1),
	SecondName varchar(255) not null,
	FirstName varchar(255) not null,
	Sex varchar(255) not null);