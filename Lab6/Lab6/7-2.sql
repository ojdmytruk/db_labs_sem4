USE Northwind;
--Go
--create trigger From1To2
--on TriggerTable1
--after insert
--as insert into TriggerTable2(TriggerDate)
--select getdate() from inserted;

--Go
--create trigger From2To3
--on TriggerTable2
--after insert
--as insert into TriggerTable3(TriggerDate)
--select getdate() from inserted;

Go
create trigger From3To1
on TriggerTable3
after insert
as insert into TriggerTable1(TriggerDate)
select getdate() from inserted;