USE LazyStudent;
CREATE TABLE Discounts 
	(DiscountID INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
     CompanyID INT NOT NULL,
     CONSTRAINT DiscountCompanyID FOREIGN KEY (CompanyID) REFERENCES Partners (PartnerID),
     Discount INT NOT NULL, 
	 FirstDay DATE NOT NULL,
     LastDate DATE NOT NULL);

CREATE TABLE SpecCourses 
	(SpecCourseID INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
     StudentID INT NOT NULL,
     TeacherID INT NOT NULL,
     Subject_ VARCHAR(50) NOT NULL,
     CONSTRAINT SpecCourseStudentID FOREIGN KEY (StudentID) REFERENCES Students (StudentID),
     CONSTRAINT SpecCourseTeacherID FOREIGN KEY (TeacherID) REFERENCES Teachers (TeacherID),
     CONSTRAINT CourseSubjectName FOREIGN KEY (Subject_) REFERENCES SubjectS (Subject_),
     FirstDay DATE NOT NULL, 
	 LastDate DATE NOT NULL, 
	 Cost DECIMAL,
     Grade FLOAT, 
	 Rate FLOAT);