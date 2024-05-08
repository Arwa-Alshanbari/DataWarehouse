/* CUBE: Perform a CUBE operation on the 'enrollments' table to show 
the total number of enrollments per course, per semester, and overall.*/

SELECT 
    c.Course_name, 
    s.Term, 
    COUNT(*) AS TotalEnrollments
FROM 
    Enrollment e
JOIN 
    Course c ON e.CourseID = c.CourseID
JOIN 
    Semester s ON e.SemesterID = s.SemesterID
GROUP BY 
    CUBE(c.Course_name, s.Term);

/*ROLLUP: Use ROLLUP to summarize student performance by department and 
then across the entire university.*/

SELECT 
    d.Department_name, 
    s.Term, 
    AVG(e.Average_grade) AS AverageGrade
FROM 
    Enrollment e
JOIN 
    Department d ON e.DepartmentID = d.DepartmentID
JOIN 
    Semester s ON e.SemesterID = s.SemesterID
GROUP BY 
    ROLLUP (d.Department_name, s.Term);
	
	

/*GROUPING: Use GROUPING to identify the rows created by 
ROLLUP or CUBE in theresult set.*/

SELECT
    d.Department_name,
    s.Term,
    GROUPING(d.Department_name) AS IsDeptGrouping,
    GROUPING(s.Term) AS IsTermGrouping,
    AVG(e.Average_grade) AS AverageGrade
FROM
    Enrollment e
JOIN
    Department d ON e.DepartmentID = d.DepartmentID
JOIN
    Semester s ON e.SemesterID = s.SemesterID
GROUP BY
    ROLLUP (d.Department_name, s.Term);



/*DECODE: Use DECODE to transform coded values into meaningful 
descriptions within the query output.
Instead of using DECODE, we use CASE.. END*/
SELECT 
    st.Name, 
	CASE g.Letter_grade
        WHEN 'A+' THEN 'Outstanding'
        WHEN 'A' THEN 'Excellent'
        WHEN 'B+' THEN 'Very Good'
        WHEN 'B' THEN 'Good'
        WHEN 'C+' THEN 'Above Average'
        WHEN 'C' THEN 'Average'
        WHEN 'D+' THEN 'Below Average'
        WHEN 'D' THEN 'Poor'
        WHEN 'F' THEN 'Fail'
        ELSE 'Ungraded' -- Handles any unexpected values.
    END AS GradeDescription
FROM 
    Enrollment e
JOIN 
    Course c ON e.CourseID = c.CourseID
JOIN 
    Student st ON e.StudentID = st.StudentID
JOIN 
    Grade g ON st.GradeID = g.GradeID
GROUP BY 
    st.Name, g.Letter_grade;
