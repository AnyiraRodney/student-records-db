# student-records-db
# 🎓 Student Records Management System (MySQL)

## 👨‍💻 Author
**Anyira Rodney**

## 📋 Description
This project is a simple relational database system built using MySQL.  
It manages student records, departments, courses, and enrollments.

## 🧱 Database Structure
**Tables:**
1. Departments
2. Students
3. Courses
4. Enrollments (links Students and Courses)

### Relationships:
- One Department → Many Students
- One Department → Many Courses
- Many Students ↔ Many Courses (via Enrollments)

## 🚀 How to Run
1. Open MySQL or VS Code SQL extension.
2. Copy and paste the SQL from `student_records.sql`.
3. Run each statement to create the database and tables.
4. Use `SELECT` queries to view the data.

## 🗂️ File
- `student_records.sql` — Contains full SQL schema and sample data
