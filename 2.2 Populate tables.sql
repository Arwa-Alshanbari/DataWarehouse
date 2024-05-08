-- Populate Address table
INSERT INTO Address VALUES
(1, '1234 King Abdullah', 'Jeddah', '12345'),
(2, '5678 Phalasene', 'Jeddah', '67890'),
(3, '91011 Alhada', 'Taif', '101112'),
(4, '1213 Alhaweah', 'Taif', '131415'),
(5, '1415', 'Mecca', '161718');

-- Populate Grade table
INSERT INTO Grade VALUES
(1, 'A+', 95),
(2, 'A', 90),
(3, 'B+', 85),
(4, 'A', 80),
(5, 'C+', 75),
(6, 'C', 70),
(7, 'D+', 65),
(8, 'D', 60),
(9, 'F', 50);

-- Populate Building table
INSERT INTO Building VALUES
(1, 'Science Hall', 'B12'),
(2, 'Technology Building', 'B07'),
(3, 'Liberal Arts Building', 'B22'),
(4, 'Engineering Complex', 'B20'),
(5, 'Business Center', 'B9');

-- Populate Department table
INSERT INTO Department VALUES
(1, 1, 'Biology'),
(2, 2, 'Computer Science'),
(3, 3, 'History'),
(4, 4, 'Mechanical Engineering'),
(5, 5, 'Business Administration');

-- Populate Course table
INSERT INTO Course VALUES
(1, 'Biology 101', 3),
(2, 'Intro to Computer Science', 3),
(3, 'World History', 3),
(4, 'Thermodynamics', 3),
(5, 'Business Ethics', 3);

-- Populate Room table
INSERT INTO Room VALUES
(1, 1, '101', 'Lecture Hall'),
(2, 2, '201', 'Computer Lab'),
(3, 3, '301', 'Lecture Hall'),
(4, 4, '401', 'Lab'),
(5, 5, '501', 'Lecture Hall');

-- Populate Semester table
INSERT INTO Semester VALUES
(1, 2023, 'Q1', 'Spring'),
(2, 2023, 'Q2', 'Summer'),
(3, 2023, 'Q3', 'Fall'),
(4, 2023, 'Q4', 'Winter'),
(5, 2024, 'Q1', 'Spring'),
(6, 2024, 'Q2', 'Summer'),
(7, 2024, 'Q3', 'Fall');

-- Populate Instructor table
INSERT INTO Instructor VALUES
(1, 1, 'Hana Yousef', 'Professor'),
(2, 2, 'Sara Mohammed', 'Associate Professor'),
(3, 3, 'Jana Ahmad', 'Assistant Professor'),
(4, 4, 'Hadeel Omar', 'Professor'),
(5, 5, 'Jameela Khalid', 'Lecturer');

-- Populate Student table
INSERT INTO Student VALUES
(1, 1, 1, 'Amera', 'Amera@unimail.com', 'Active', 3.9, 1500),
(2, 1, 2, 'Mada', 'Mada@unimail.com', 'Active', 3.8, 1000),
(3, 3, 3, 'Aseel', 'Aseel@unimail.com', 'Active', 3.0, 500),
(4, 2, 3, 'Dina', 'Dina@unimail.com', 'Active', 3.4, 250),
(5, 2, 4, 'Kholod', 'Kholod@unimail.com', 'Active', 3.53, 00),
(6, 1, 4, 'Najla', 'Najla@unimail.com', 'Active', 3.95, 00),
(7, 4, 4, 'Lubna', 'Lubna@unimail.com', 'Active', 2.7, 00),
(8, 2, 4, 'Sousan', 'Sousan@unimail.com', 'Active', 3.49, 00),
(9, 1, 4, 'Mona', 'Mona@unimail.com', 'Active', 3.96, 00),
(10, 5, 5, 'Noor', 'Noor@unimail.com', 'Active', 2.0, 2000);

-- Populate Enrollment table
INSERT INTO Enrollment VALUES
(1, 1, 1, 1, 1, 1, 1, 30, 85, 45),
(2, 1, 2, 1, 1, 1, 1, 30, 85, 45),
(3, 1, 3, 1, 1, 1, 1, 30, 85, 45),
(4, 1, 4, 1, 1, 1, 1, 30, 85, 45),
(5, 1, 5, 1, 1, 1, 1, 30, 85, 45),
(6, 2, 2, 2, 2, 2, 2, 25, 80, 50),
(7, 2, 7, 2, 2, 2, 2, 25, 80, 50),
(8, 3, 9, 3, 3, 3, 3, 20, 75, 40),
(9, 3, 2, 3, 3, 3, 3, 20, 75, 40),
(10, 4, 10, 4, 4, 4, 4, 15, 70, 60),
(11, 4, 6, 4, 4, 4, 4, 15, 70, 60),
(12, 4, 7, 4, 4, 4, 4, 15, 70, 60),
(13, 4, 8, 4, 4, 4, 4, 15, 70, 60),
(14, 4, 9, 4, 4, 4, 4, 15, 70, 60),
(15, 5, 10, 5, 5, 5, 5, 10, 90, 30),
(16, 5, 6, 5, 5, 5, 5, 10, 90, 30),
(17, 5, 8, 5, 5, 5, 5, 10, 90, 30);