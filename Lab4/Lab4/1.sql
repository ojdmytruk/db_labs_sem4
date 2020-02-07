use Northwind;
--Task1
 SELECT * FROM Employees;
INSERT INTO Employees
(LastName, FirstName, Title, TitleOfCourtesy, Address, City,
 PostalCode, Country, HomePhone, Extension, Photo, Notes, PhotoPath, Salary)
VALUES 
('Dmytruk', 'Olesia', 'Intern', 'Ms.', 'Akademika Yanhelia Street, 20', 'Kyiv', '04132', 'Ukraine', '(111) 222 3334 ', 500 ,'Photo', 'Note',
 'Path', 2500);
 SELECT * FROM Employees;