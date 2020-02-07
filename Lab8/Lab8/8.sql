--USE LazyStudent;
---- UserRoles Archive
--SELECT * INTO  EnrollUsersArchive FROM EnrollUsers WHERE 1<>1 ;
--ALTER TABLE EnrollUsersArchive 
--ADD DelTime DATETIME, DeletedBy VARCHAR (20);

--CREATE TRIGGER insert_into_enroll_archive
--ON EnrollUsers
--FOR DELETE
--AS 
--INSERT INTO EnrollUsersArchive (UserEnroll,  DelTime, DeletedBy)
--SELECT UserEnroll, GETDATE(), CURRENT_USER
--FROM deleted;


-- Clients Archive

--SELECT * INTO ClientsArchive FROM Clients WHERE 1<>1;
--ALTER TABLE ClientsArchive ADD DeletionDateTime DATETIME, DeletedBy VARCHAR(20);

--CREATE TRIGGER insert_into_clients_archive
--ON Clients
--FOR DELETE
--AS
--INSERT INTO ClientsArchive (ClientID, UserEn, FirstName, LastName, Email, 
--                            Password, Phone, RegDate, DeletionDateTime, DeletedBy)
--SELECT ClientID, UserEn, FirstName, LastName, Email, 
--       Password, Phone, RegDate, GETDATE(), CURRENT_USER
--FROM deleted;

---- Students Archive
--SELECT * INTO StudentsArchive FROM Students WHERE 1<>1;
--ALTER TABLE StudentsArchive ADD DeletionDateTime DATETIME, DeletedBy VARCHAR(20);

--CREATE TRIGGER insert_into_students_archive
--ON Students
--FOR DELETE
--AS
--INSERT INTO StudentsArchive (StudentID, ClientID, DeletionDateTime, DeletedBy)
--SELECT StudentID, ClientID, GETDATE(), CURRENT_USER
--FROM deleted;

---- Teachers Archive
--SELECT * INTO TeachersArchive FROM Teachers WHERE 1<>1;
--ALTER TABLE TeachersArchive ADD DeletionDateTime DATETIME, DeletedBy VARCHAR(20);

--CREATE TRIGGER insert_into_teachers_archive
--ON Teachers
--FOR DELETE
--AS
--INSERT INTO TeachersArchive (TeacherID, ClientID, PartnerID, Rating, DeletionDateTime, DeletedBy)
--SELECT TeacherID, ClientID, PartnerID, Rating, GETDATE(), CURRENT_USER
--FROM deleted;

---- TeacherSubjects Archive
--SELECT * INTO TeacherSubjectsArchive FROM TeacherSubjects WHERE 1<>1;
--ALTER TABLE TeacherSubjectsArchive ADD DeletionDateTime DATETIME, DeletedBy VARCHAR(20);

--CREATE TRIGGER insert_into_teacher_subjects_archive
--ON TeacherSubjects
--FOR DELETE
--AS
--INSERT INTO TeacherSubjectsArchive (TeacherID, Subject_, DeletionDateTime, DeletedBy)
--SELECT TeacherID, Subject_, GETDATE(), CURRENT_USER
--FROM deleted;

---- Subjects Archive

--SELECT * INTO SubjectsArchive FROM Subjects WHERE 1<>1;
--ALTER TABLE SubjectsArchive ADD DeletionDateTime DATETIME, DeletedBy VARCHAR(20);

--CREATE TRIGGER insert_into_subjects_archive
--ON Subjects
--FOR DELETE
--AS
--INSERT INTO SubjectsArchive (Subject_, DeletionDateTime, DeletedBy)
--SELECT Subject_, GETDATE(), CURRENT_USER
--FROM deleted;

---- Partners Archive
--SELECT * INTO PartnersArchive FROM Partners WHERE 1<>1;
--ALTER TABLE PartnersArchive ADD DeletionDateTime DATETIME, DeletedBy VARCHAR(20);

--CREATE TRIGGER insert_into_partners_archive
--ON Partners
--FOR DELETE
--AS
--INSERT INTO PartnersArchive (PartnerID, PartnerName, DeletionDateTime, DeletedBy)
--SELECT PartnerID, PartnerName, GETDATE(), CURRENT_USER
--FROM deleted;

---- Discounts Archive
--SELECT * INTO  DiscountsArchive FROM Discounts WHERE 1<>1;
--ALTER TABLE DiscountsArchive ADD DeletionDateTime DATETIME, DeletedBy VARCHAR(20);

--CREATE TRIGGER  insert_into_discounts_archive
--ON Discounts
--FOR DELETE
--AS
--INSERT INTO DiscountsArchive (DiscountID, CompanyID, Discount, FirstDay, LastDate, DeletionDateTime, DeletedBy)
--SELECT DiscountID, CompanyID, Discount, FirstDay, LastDate, GETDATE(), CURRENT_USER
--FROM deleted;

---- SpecCourses Archive
--SELECT * INTO SpecCoursesArchive FROM SpecCourses WHERE 1<>1;
--ALTER TABLE SpecCoursesArchive ADD DeletionDateTime DATETIME, DeletedBy VARCHAR(20);

--CREATE TRIGGER insert_into__spec_courses_archive
--ON SpecCourses
--FOR DELETE
--AS
--INSERT INTO SpecCoursesArchive (SpecCourseID, StudentID, TeacherID, Subject_, FirstDay,
--                                LastDate, Cost, Grade, Rate, DeletionDateTime, DeletedBy)
--SELECT SpecCourseID, StudentID, TeacherID, Subject_, FirstDay,
--       LastDate, Cost, Grade, Rate, GETDATE(), CURRENT_USER 
--FROM deleted;

