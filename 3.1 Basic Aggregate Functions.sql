--  COUNT: Count the number of students in each department per semester.
SELECT d.Department_name, s.Term, COUNT(e.StudentID) AS NumberOfStudents
FROM Enrollment e
JOIN Department d ON e.DepartmentID = d.DepartmentID
JOIN Semester s ON e.SemesterID = s.SemesterID
GROUP BY d.Department_name, s.Term;

-- AVG: Calculate the average grades for each course at the end of the term.
SELECT c.Course_name, s.Term, AVG(e.Average_grade) AS AverageGrade
FROM Enrollment e
JOIN Course c ON e.CourseID = c.CourseID
JOIN Semester s ON e.SemesterID = s.SemesterID
GROUP BY c.Course_name, s.Term;

-- SUM: Sum all students' final grades in each course.
SELECT c.Course_name, SUM(g.Points) AS TotalPoints
FROM Enrollment e
JOIN Course c ON e.CourseID = c.CourseID
JOIN Student st ON e.StudentID = st.StudentID
JOIN Grade g ON st.GradeID = g.GradeID
GROUP BY c.Course_name;

-- MAX: Determine the maximum grade achieved in each course.
SELECT c.Course_name, MAX(g.Points) AS MaxGrade
FROM Enrollment e
JOIN Course c ON e.CourseID = c.CourseID
JOIN Student st ON e.StudentID = st.StudentID
JOIN Grade g ON st.GradeID = g.GradeID
GROUP BY c.Course_name;