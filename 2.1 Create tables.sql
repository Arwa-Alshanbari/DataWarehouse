-- Create Address table
CREATE TABLE Address (
    AddressID INT PRIMARY KEY,
    StreetAddress VARCHAR(255),
    City VARCHAR(100),
    PostalCode VARCHAR(20)
);

-- Create Grade table
CREATE TABLE Grade (
    GradeID INT PRIMARY KEY,
    Letter_grade CHAR(200),
    Points INT
);

-- Create Building table
CREATE TABLE Building (
    BuildingID INT PRIMARY KEY,
    Building_name VARCHAR(255),
    Location VARCHAR(255)
);


-- Create Student table
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    GradeID INT,
    AddressID INT,
    Name VARCHAR(255),
    Email VARCHAR(255),
    Status VARCHAR(100),
    GPA FLOAT,
    Financial_aid FLOAT,
    FOREIGN KEY (GradeID) REFERENCES Grade(GradeID),
    FOREIGN KEY (AddressID) REFERENCES Address(AddressID)
);

-- Create Instructor table
CREATE TABLE Instructor (
    InstructorID INT PRIMARY KEY,
    AddressID INT,
    Name VARCHAR(255),
    Position VARCHAR(100),
    FOREIGN KEY (AddressID) REFERENCES Address(AddressID)
);

-- Create Department table
CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    BuildingID INT,
    Department_name VARCHAR(255),
    FOREIGN KEY (BuildingID) REFERENCES Building(BuildingID)
);

-- Create Course table
CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    Course_name VARCHAR(255),
    Hours INT
);

-- Create Room table
CREATE TABLE Room (
    RoomID INT PRIMARY KEY,
    BuildingID INT,
    Room_number VARCHAR(50),
    Type VARCHAR(100),
    FOREIGN KEY (BuildingID) REFERENCES Building(BuildingID)
);

-- Create Semester table
CREATE TABLE Semester (
    SemesterID INT PRIMARY KEY,
    Year INT,
    Quarter CHAR(2),
    Term VARCHAR(100)
);

-- Create Enrollment table
CREATE TABLE Enrollment (
    EnrollmentID INT PRIMARY KEY,
    DepartmentID INT,
    StudentID INT,
    CourseID INT,
    SemesterID INT,
    InstructorID INT,
    FacilityID INT,
    Count_enrollment INT,
    Average_grade FLOAT,
    Total_teaching_hours INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
    FOREIGN KEY (SemesterID) REFERENCES Semester(SemesterID),
    FOREIGN KEY (InstructorID) REFERENCES Instructor(InstructorID),
    FOREIGN KEY (FacilityID) REFERENCES Room(RoomID)
);
