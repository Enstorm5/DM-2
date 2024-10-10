-- Deletes the department named 'Chemistry'
DELETE FROM Departments
WHERE department_name = 'Chemistry';


-- Deletes professors hired before 2015
DELETE FROM Professors
WHERE hire_date < DATE '2015-01-01';  


-- Deletes hostals located at any address containing 'Kandy'
DELETE FROM Hostal
WHERE location LIKE '%Kandy%';  


-- Deletes all clubs classified as 'Academic'
DELETE FROM Clubs
WHERE club_type = 'Academic';  


-- Deletes all books written by Cormen
DELETE FROM Library_books
WHERE author = 'Cormen';  


-- Deletes classes scheduled before 9 AM on October 1, 2024
DELETE FROM Classes
WHERE class_time < TIMESTAMP '2024-10-01 09:00:00';  


-- Deletes students born before January 1, 2000
DELETE FROM Students
WHERE dob < DATE '2000-01-01';  


-- Deletes all courses with less than 3 credits
DELETE FROM Courses
WHERE credits < 3;  


-- Deletes all enrollments for the course with ID 3
DELETE FROM Enrollments
WHERE course_id = 3; 


-- Deletes all exams classified as 'Quiz'
DELETE FROM Exams
WHERE exam_type = 'Quiz';  


-- Deletes all results with scores below 50
DELETE FROM Results
WHERE score < 50;  


-- Deletes all scholarships that are of type 'Merit'
DELETE FROM Scholarships
WHERE scholarship_type = 'Merit';  


-- Deletes memberships for students named 'Lahiru'
DELETE FROM Library_memberships
WHERE student_id IN (SELECT student_id FROM Students WHERE first_name = 'Lahiru');




-- Delete Scholarships for Students with Results Lower than 50
BEGIN
    DELETE FROM Scholarships
    WHERE student_id IN (
        SELECT student_id
        FROM Results
        WHERE score < 50
    );
    
    DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT || ' scholarships deleted for students with results lower than 50.');
END;
/


-- Delete Students with No Enrollments
BEGIN
    DELETE FROM Students
    WHERE NOT EXISTS (
        SELECT 1 
        FROM Enrollments 
        WHERE Enrollments.student_id = Students.student_id
    );

    DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT || ' students deleted who have no enrollments.');
END;
/


-- Delete Clubs with No Members
BEGIN
    DELETE FROM Clubs
    WHERE NOT EXISTS (
        SELECT 1 
        FROM Students 
        WHERE Students.club_id = Clubs.club_id
    );

    DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT || ' clubs deleted that have no members.');
END;
/


-- Delete Courses without Any Enrollments
BEGIN
    DELETE FROM Courses
    WHERE NOT EXISTS (
        SELECT 1 
        FROM Enrollments 
        WHERE Enrollments.course_id = Courses.course_id
    );

    DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT || ' courses deleted that have no enrollments.');
END;
/


-- Delete Exams for Courses with No Enrollments
BEGIN
    DELETE FROM Exams
    WHERE course_id IN (
        SELECT course_id
        FROM Courses
        WHERE NOT EXISTS (
            SELECT 1 
            FROM Enrollments 
            WHERE Enrollments.course_id = Courses.course_id
        )
    );

    DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT || ' exams deleted for courses with no enrollments.');
END;
/


-- Delete Hostals Not Assigned to Any Professors
BEGIN
    DELETE FROM Hostal
    WHERE NOT EXISTS (
        SELECT 1 
        FROM Students 
        WHERE Students.hostal_id = Hostal.hostal_id
    );

    DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT || ' hostals deleted that are not assigned to any professors.');
END;
/


-- Delete Departments with No Professors
BEGIN
    DELETE FROM Departments
    WHERE NOT EXISTS (
        SELECT 1 
        FROM Professors 
        WHERE Professors.department_id = Departments.department_id
    );

    DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT || ' departments deleted that have no associated professors.');
END;
/


-- Delete Results for Exams Scored Below 50
BEGIN
    DELETE FROM Results
    WHERE exam_id IN (
        SELECT exam_id
        FROM Exams
        WHERE exam_id IN (
            SELECT exam_id
            FROM Results
            WHERE score < 50
        )
    );

    DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT || ' results deleted for exams scored below 50.');
END;
/



