use Dmytruk;
alter table Student
add check ((Sex='m') or (Sex='f'));