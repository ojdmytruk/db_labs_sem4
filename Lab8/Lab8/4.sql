USE LazyStudent;
CREATE TABLE Teachers 
	(TeacherID INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
     ClientID INT NOT NULL,
     PartnerID INT NOT NULL,
     CONSTRAINT TeacherClientID FOREIGN KEY (ClientID) REFERENCES Clients (ClientID),
     CONSTRAINT PartnerID_ FOREIGN KEY (PartnerID) REFERENCES Partners (PartnerID),
     Rating FLOAT DEFAULT (0));
CREATE TABLE Subjects 
	(Subject_ VARCHAR(50) PRIMARY KEY NOT NULL);

CREATE TABLE TeacherSubjects 
	(TeacherID INT NOT NULL,
     Subject_ VARCHAR(50) NOT NULL,
     CONSTRAINT SubjectTeacherID FOREIGN KEY (TeacherID) REFERENCES Teachers (TeacherID),
     CONSTRAINT FK_Subject FOREIGN KEY (Subject_) REFERENCES Subjects (Subject_));