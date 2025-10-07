-- =====================================
-- DATABASE: Student Records Management System
-- AUTHOR: Anyira Rodney
-- DATE: September 2025
-- =====================================

-- Create the database
CREATE DATABASE student_records_db;
USE student_records_db;

-- =====================================
-- TABLE 1: Departments
-- =====================================
CREATE TABLE Departments (
    DepartmentID INT AUTO_INCREMENT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL UNIQUE
);

-- =====================================
-- TABLE 2: Students
-- =====================================
CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    DepartmentID INT,
    DateOfBirth DATE,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- =====================================
-- TABLE 3: Courses
-- =====================================
CREATE TABLE Courses (
    CourseID INT AUTO_INCREMENT PRIMARY KEY,
    CourseName VARCHAR(100) NOT NULL,
    CourseCode VARCHAR(50) UNIQUE NOT NULL,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- =====================================
-- TABLE 4: Enrollments (Many-to-Many)
-- =====================================
CREATE TABLE Enrollments (
    EnrollmentID INT AUTO_INCREMENT PRIMARY KEY,
    StudentID INT NOT NULL,
    CourseID INT NOT NULL,
    EnrollmentDate DATE DEFAULT (CURRENT_DATE),
    Grade CHAR(2),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

-- =====================================
-- SAMPLE DATA INSERTS
-- =====================================

-- Departments
INSERT INTO Departments (DepartmentName) VALUES
('Computer Science'),
('Mathematics'),
('Biology');

-- Students
INSERT INTO Students (FirstName, LastName, Email, DepartmentID, DateOfBirth) VALUES
('John', 'Doe', 'john.doe@example.com', 1, '2002-03-12'),
('Jane', 'Smith', 'jane.smith@example.com', 2, '2001-07-25'),
('Kevin', 'Otieno', 'kevin.otieno@example.com', 1, '2003-02-10');

-- Courses
INSERT INTO Courses (CourseName, CourseCode, DepartmentID) VALUES
('Database Systems', 'CS101', 1),
('Calculus I', 'MATH101', 2),
('Genetics', 'BIO101', 3),
('Web Development', 'CS102', 1);

-- Enrollments
INSERT INTO Enrollments (StudentID, CourseID, Grade) VALUES
(1, 1, 'A'),
(1, 4, 'B'),
(2, 2, 'A'),
(3, 1, 'B'),
(3, 3, 'A');

-- =====================================
-- VIEW DATA (optional)
-- =====================================
-- SELECT * FROM Students;
-- SELECT * FROM Courses;
-- SELECT * FROM Enrollments;
-- SELECT * FROM Departments;
