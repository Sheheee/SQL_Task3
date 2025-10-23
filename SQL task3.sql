CREATE TABLE Students (
    student_id SERIAL PRIMARY KEY,
    NAME VARCHAR(50) NOT NULL,
    age SMALLINT,
    department VARCHAR(30) NOT NULL,
    city VARCHAR(50)
);

INSERT INTO Students (NAME, age, department, city) VALUES
('Anjali', 21, 'Computer Science', 'Kochi'),
('Rahul', 19, 'Mathematics', 'Trivandrum'),
('Meera', 22, 'Physics', 'Kollam'),
('Anu', 23, 'Chemistry', 'Trivandrum'),
('Minha', 21, 'Computer Science', 'Kottayam');

--View all records
SELECT * FROM Students;

--Select specific columns
SELECT NAME, department FROM Students;

--Use WHERE clause
SELECT * FROM Students WHERE city = 'Trivandrum';

--Use WHERE with AND
SELECT * FROM Students WHERE department = 'Computer Science' AND city = 'Kottayam';

--Use WHERE with OR
SELECT * FROM Students WHERE department = 'Physics' OR city = 'TVM';

--Use LIKE
SELECT * FROM Students WHERE NAME LIKE 'A%'; 

SELECT * FROM Students WHERE NAME LIKE '%l'; 

-- Use BETWEEN
SELECT * FROM Students WHERE age BETWEEN 20 AND 22;

-- Sort with Order By
SELECT * FROM Students ORDER BY NAME ASC;

SELECT * FROM Students ORDER BY age DESC;