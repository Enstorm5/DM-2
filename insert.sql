-- 1. Insert into Departments
INSERT INTO Departments (department_name) VALUES ('Computer Science');
INSERT INTO Departments (department_name) VALUES ('Mathematics');
INSERT INTO Departments (department_name) VALUES ('Physics');
INSERT INTO Departments (department_name) VALUES ('Chemistry');
INSERT INTO Departments (department_name) VALUES ('Biology');

-- 2. Insert  into Professors
INSERT INTO Professors (first_name, last_name, hire_date, department_id) VALUES ('Clark', 'Kent', DATE '2019-11-15', 1);
INSERT INTO Professors (first_name, last_name, hire_date, department_id) VALUES ('Sam ', 'Winchester', DATE '2019-09-23', 2);
INSERT INTO Professors (first_name, last_name, hire_date, department_id) VALUES ('Dean', 'Williams', DATE '2021-03-10', 3);
INSERT INTO Professors (first_name, last_name, hire_date, department_id) VALUES ('Larry', 'Brown', DATE '2022-08-10', 4);
INSERT INTO Professors (first_name, last_name, hire_date, department_id) VALUES ('Noris', 'Jones', DATE '2018-05-27', 5);

-- 3. Insert into Hostal
INSERT INTO Hostal (hostal_name, location, professor_id) VALUES ('Emerald Hall', '28 Old York Road', 1);
INSERT INTO Hostal (hostal_name, location, professor_id) VALUES ('Ruby House', '8146 Henry Smith St', 2);
INSERT INTO Hostal (hostal_name, location, professor_id) VALUES ('Sapphire Lodge', '694 Pin Oak St', 3);
INSERT INTO Hostal (hostal_name, location, professor_id) VALUES ('Amethyst Residence', '500 Aspen St', 4);
INSERT INTO Hostal (hostal_name, location, professor_id) VALUES ('Garnet Center', '8505 Fairway St', 5);

-- 4. Insert  into Clubs
INSERT INTO Clubs (club_name, club_type) VALUES ('Robotics Club', 'Technical');
INSERT INTO Clubs (club_name, club_type) VALUES ('Mathletes', 'Academic');
INSERT INTO Clubs (club_name, club_type) VALUES ('Physics Society', 'Academic');
INSERT INTO Clubs (club_name, club_type) VALUES ('Chemistry Enthusiasts', 'Academic');
INSERT INTO Clubs (club_name, club_type) VALUES ('Biology Explorers', 'Academic');

-- 5. Insert into Library_books
INSERT INTO Library_books (book_title, author, publication_year) VALUES ('Introduction to Algorithms', 'Cormen', 2009);
INSERT INTO Library_books (book_title, author, publication_year) VALUES ('Discrete Mathematics', 'Rosen', 2012);
INSERT INTO Library_books (book_title, author, publication_year) VALUES ('Physics for Scientists and Engineers', 'Serway', 2015);
INSERT INTO Library_books (book_title, author, publication_year) VALUES ('Organic Chemistry', 'Paula Yurkanis Bruice', 2016);
INSERT INTO Library_books (book_title, author, publication_year) VALUES ('Molecular Biology of the Cell', 'Alberts', 2017);

-- 6. Insert  Classes
INSERT INTO Classes (class_name, professor_id, class_time) VALUES ('Data Structures', 1, TIMESTAMP '2024-10-01 10:00:00');
INSERT INTO Classes (class_name, professor_id, class_time) VALUES ('Calculus I', 2, TIMESTAMP '2024-10-02 11:00:00');
INSERT INTO Classes (class_name, professor_id, class_time) VALUES ('Mechanics', 3, TIMESTAMP '2024-10-03 09:00:00');
INSERT INTO Classes (class_name, professor_id, class_time) VALUES ('Organic Chemistry', 4, TIMESTAMP '2024-10-04 14:00:00');
INSERT INTO Classes (class_name, professor_id, class_time) VALUES ('Cell Biology', 5, TIMESTAMP '2024-10-05 15:00:00');

-- 7. Insert  Students
INSERT INTO Students (first_name, last_name, dob, class_id, club_id, hostal_id) VALUES ('John', 'Doe', DATE '2000-01-10', 1, 1, 1);
INSERT INTO Students (first_name, last_name, dob, class_id, club_id, hostal_id) VALUES ('Jane', 'Smith', DATE '1999-02-20', 2, 2, 2);
INSERT INTO Students (first_name, last_name, dob, class_id, club_id, hostal_id) VALUES ('Tom', 'Johnson', DATE '2001-03-15', 3, 3, 3);
INSERT INTO Students (first_name, last_name, dob, class_id, club_id, hostal_id) VALUES ('Lucy', 'Brown', DATE '2002-04-12', 4, 4, 4);
INSERT INTO Students (first_name, last_name, dob, class_id, club_id, hostal_id) VALUES ('Mike', 'Davis', DATE '2003-05-30', 5, 5, 5);

-- 8. Insert Courses
INSERT INTO Courses (course_name, credits, professor_id, department_id) VALUES ('Algorithms', 3, 1, 1);
INSERT INTO Courses (course_name, credits, professor_id, department_id) VALUES ('Differential Equations', 4, 2, 2);
INSERT INTO Courses (course_name, credits, professor_id, department_id) VALUES ('Thermodynamics', 3, 3, 3);
INSERT INTO Courses (course_name, credits, professor_id, department_id) VALUES ('Spectroscopy', 3, 4, 4);
INSERT INTO Courses (course_name, credits, professor_id, department_id) VALUES ('Genetics', 5, 5, 5);

-- 9. Insert Enrollments
INSERT INTO Enrollments (student_id, course_id, enrollment_date) VALUES (1, 1, DATE '2024-10-01');
INSERT INTO Enrollments (student_id, course_id, enrollment_date) VALUES (2, 2, DATE '2024-10-02');
INSERT INTO Enrollments (student_id, course_id, enrollment_date) VALUES (3, 3, DATE '2024-10-03');
INSERT INTO Enrollments (student_id, course_id, enrollment_date) VALUES (4, 4, DATE '2024-10-04');
INSERT INTO Enrollments (student_id, course_id, enrollment_date) VALUES (5, 5, DATE '2024-10-05');

-- 10. Insert into Exams
INSERT INTO Exams (exam_date, exam_type, course_id) VALUES (DATE '2024-11-01', 'Course Work', 1);
INSERT INTO Exams (exam_date, exam_type, course_id) VALUES (DATE '2024-11-02', 'Exam', 2);
INSERT INTO Exams (exam_date, exam_type, course_id) VALUES (DATE '2024-11-03', 'Quiz', 3);
INSERT INTO Exams (exam_date, exam_type, course_id) VALUES (DATE '2024-11-04', 'Course Work', 4);
INSERT INTO Exams (exam_date, exam_type, course_id) VALUES (DATE '2024-11-05', 'Exam', 5);

-- 11. Insert into Results
INSERT INTO Results (student_id, exam_id, score) VALUES (1, 1, 85);
INSERT INTO Results (student_id, exam_id, score) VALUES (2, 2, 92);
INSERT INTO Results (student_id, exam_id, score) VALUES (3, 3, 78);
INSERT INTO Results (student_id, exam_id, score) VALUES (4, 4, 88);
INSERT INTO Results (student_id, exam_id, score) VALUES (5, 5, 95);

-- 12. Insert into Scholarships
INSERT INTO Scholarships (student_id, scholarship_type, amount) VALUES (1, 'Merit', 1000);
INSERT INTO Scholarships (student_id, scholarship_type, amount) VALUES (2, 'Need-based', 1500);
INSERT INTO Scholarships (student_id, scholarship_type, amount) VALUES (3, 'Athletic', 2000);
INSERT INTO Scholarships (student_id, scholarship_type, amount) VALUES (4, 'Academic', 1200);
INSERT INTO Scholarships (student_id, scholarship_type, amount) VALUES (5, 'Artistic', 1800);

-- 13. Insert into Library_memberships
INSERT INTO Library_memberships (membership_date, student_id, book_id) VALUES (DATE '2024-10-01', 1, 1);
INSERT INTO Library_memberships (membership_date, student_id, book_id) VALUES (DATE '2024-10-02', 2, 2);
INSERT INTO Library_memberships (membership_date, student_id, book_id) VALUES (DATE '2024-10-03', 3, 3);
INSERT INTO Library_memberships (membership_date, student_id, book_id) VALUES (DATE '2024-10-04', 4, 4);
INSERT INTO Library_memberships (membership_date, student_id, book_id) VALUES (DATE '2024-10-05', 5, 5);