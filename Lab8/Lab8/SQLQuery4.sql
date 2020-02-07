use LazyStudent;
INSERT INTO EnrollUsers(UserEnroll) VALUES ('Student'), ('Teacher');
INSERT INTO Clients (UserEn, FirstName, LastName, Email, Password, Phone) VALUES
    ('Student', 'John', 'Jenkins', 'jen@gmail.com', 'password123', '+121 345 654'),
    ('Student', 'Jake', 'Stephens', 'steph@gmail.com', 'pass2134', '+123 742 426'),
    ('Student', 'James', 'Anders', 'jam.and@gmail.com', 'pass6422', '+380 64 238 94 16'),
    ('Student', 'Jake', 'Stevens', 'jak@yahoo.com', 'bdfg223svhW', '+123 523 222'),
    ('Student', 'Josh', 'Miller', 'jo.miller21@gmail.com', '4#fgn%ggfE', '+124 432 111'),
    ('Teacher', 'Jeff', 'Jameson', 'jam.jeff@gmail.com', 'mgn234o5icv7', '+127 543 225'),
    ('Teacher', 'Rob', 'Burden', 'rob.burd@gmail.com', 'fgd45kvioiw', '+124 234 532'),
    ('Teacher', 'Fred', 'Roberts', 'fred.robertson22@gmail.com', '46ivbm4mn8v8', '+120 555 644'),
    ('Teacher', 'Bob', 'Stanley', 'bob.stan@gmail.com', '656kksk434gg', '+127 634 663'),
    ('Teacher', 'Dan', 'Donaldson', 'dan.donaldson52@gmail.com', 'n;oeG436^ee', '+123 543 345');
INSERT INTO Partners (PartnerName) VALUES ('TeacherOnline'), ('TutorForU'), ('Improve Yourself');
INSERT INTO Teachers (ClientID, PartnerID) VALUES (6, 1), (7, 2), (8, 1), (9, 3), (10, 3);
INSERT INTO Subjects (Subject_) VALUES ('Phisics'), ('English'), ('History'), ('Linear Algebra'),
                                            ('Theory of Probabilities'), ('Programming Basics'), ('Algorithms'),
                                            ('Philosophy'), ('Organic Chemistry'), ('Electronics'), ('Discrete Maths'),
                                            ('Psychology'), ('Calculus');
INSERT INTO TeacherSubjects (TeacherID, Subject_) VALUES (1, 'Phisics'), (1, 'Linear Algebra'), (1, 'Calculus'),
                                                              (2, 'English'), (3, 'Programming Basics'),
                                                              (3, 'Electronics'), (4, 'Philosophy'), (4, 'History'),
                                                              (5, 'Discrete Maths'), (5, 'Algorithms'), (5, 'Calculus');
INSERT INTO SpecCourses (StudentID, TeacherID, Subject_, FirstDay, LastDate, Cost, Grade, Rate)
    VALUES (1, 1, 'Linear Algebra', '2018-02-04', '2018-03-04', 12, 5, 5),
           (2, 1, 'Calculus', '2018-05-06', '2018-06-06', 12, 5, 3);
INSERT INTO Discounts(CompanyID, Discount, FirstDay, LastDate) VALUES (1, 10, '2019-04-01', '2019-04-14'),
                                                                           (2, 15, '2018-04-01', '2018-04-14');