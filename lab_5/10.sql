use Dmytruk;
alter table Student
drop constraint pk_student;
alter table Student 
alter column StudentId smallint not null ;
alter table Student
add constraint pk_student primary key (StudentID);
select * from Student;
