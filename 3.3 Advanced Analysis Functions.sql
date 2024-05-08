-- RANK: Rank students in each course based on their grades.

SELECT
    s.StudentID,
    s.Name,
    c.Course_name,
    e.Average_grade,
    RANK() OVER (PARTITION BY c.CourseID ORDER BY e.Average_grade DESC) AS Rank
FROM
    Enrollment e
JOIN
    Student s ON e.StudentID = s.StudentID
JOIN
    Course c ON e.CourseID = c.CourseID
ORDER BY
    c.Course_name, Rank;
	
-- CUME_DIST: Calculate the cumulative distribution of grades in each course.
SELECT
    s.StudentID,
    s.Name,
    c.Course_name,
    e.Average_grade,
    CUME_DIST() OVER (PARTITION BY c.CourseID 
					  ORDER BY e.Average_grade DESC) AS CumulativeDistribution
FROM
    Enrollment e
JOIN
    Student s ON e.StudentID = s.StudentID
JOIN
    Course c ON e.CourseID = c.CourseID
ORDER BY
    c.Course_name, e.Average_grade DESC;