--USE LazyStudent;

--CREATE PROCEDURE CoursesForPeriod(@periodstart DATE, @periodend DATE)
--AS
--    BEGIN
--        SELECT * FROM SpecCourses WHERE FirstDay > @periodstart AND LastDate < @periodend;
--    END;

--CREATE PROCEDURE IncomeForPeriod(@periodstart DATE, @periodend DATE)
--AS
--    BEGIN
--        SELECT SUM(Cost) FROM SpecCourses WHERE FirstDay > @periodstart AND LastDate < @periodend;
--    END;

--CREATE PROCEDURE CoursesForStudent(@StudentFirstName VARCHAR(40), @StudentLastName VARCHAR(40))
--AS
--    BEGIN
--        SELECT * FROM SpecCourses WHERE StudentID IN (
--            SELECT StudentID FROM Students WHERE ClientID IN(
--                SELECT ClientID FROM Clients WHERE FirstName=@StudentFirstName AND LastName=@StudentLastName));
--    END;

--CREATE PROCEDURE IncomeForStudent(@StudentFirstName VARCHAR(40), @StudentLastName VARCHAR(40))
--AS
--    BEGIN
--        SELECT SUM(Cost) FROM SpecCourses WHERE StudentID IN (
--            SELECT StudentID FROM Students WHERE ClientID IN(
--                SELECT ClientID FROM Clients WHERE FirstName=@StudentFirstName AND LastName=@StudentLastName));
--    END;

--CREATE PROCEDURE CoursesForTeacher(@TeacherFirstName VARCHAR(40), @TeacherLastName VARCHAR(40))
--AS
--    BEGIN
--        SELECT * FROM SpecCourses WHERE TeacherID IN (
--            SELECT TeacherID FROM Teachers WHERE ClientID IN(
--                SELECT ClientID FROM Clients WHERE FirstName=@TeacherFirstName AND LastName=@TeacherLastName));
--    END;

--CREATE PROCEDURE IncomeForTeacher(@TeacherFirstName VARCHAR(40), @TeacherLastName VARCHAR(40))
--AS
--    BEGIN
--        SELECT SUM(Cost) FROM SpecCourses WHERE TeacherID IN (
--            SELECT TeacherID FROM Teachers WHERE ClientID IN(
--                SELECT ClientID FROM Clients WHERE FirstName=@TeacherFirstName AND LastName=@TeacherLastName));
--    END;

--CREATE PROCEDURE CoursesForCompany(@CompName VARCHAR(50))
--AS
--    BEGIN
--        SELECT * FROM SpecCourses WHERE TeacherID IN (
--            SELECT TeacherID FROM Teachers WHERE PartnerID IN(
--                SELECT PartnerID FROM Partners WHERE PartnerName=@CompName));
--    END;

CREATE PROCEDURE IncomeForCompany(@CompName VARCHAR(50))
AS
    BEGIN
        SELECT SUM(Cost) FROM SpecCourses WHERE TeacherID IN (
            SELECT TeacherID FROM Teachers WHERE PartnerID IN(
                SELECT PartnerID FROM Partners WHERE PartnerName=@CompName));
    END;