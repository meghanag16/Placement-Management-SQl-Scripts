CREATE DATABASE placemanagement;
USE placemanagement;

CREATE TABLE Admin (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    password VARCHAR(255)
);

CREATE TABLE College (
    college_id INT PRIMARY KEY,
    collegeadmin VARCHAR(225),
    collegename VARCHAR(225),
    location VARCHAR(225)
);

CREATE TABLE Certificate (
    cer_id INT PRIMARY KEY,
    year VARCHAR(225),
    college_id INT,
    FOREIGN KEY (college_id) REFERENCES College(college_id)
);

CREATE TABLE Placement (
    p_id INT PRIMARY KEY,
    p_name VARCHAR(255),
    qualification VARCHAR(255),
    year INT,
    date VARCHAR(255),
    college_id INT,
    FOREIGN KEY (college_id) REFERENCES College(college_id)
);

CREATE TABLE Student (
    stu_id INT PRIMARY KEY,
    stu_name VARCHAR(255),
    roll LONG,
    qualification VARCHAR(255),
    course VARCHAR(255),
    year INT,
    hall_no LONG,
    college_id INT,
    cer_id INT,
    FOREIGN KEY (college_id) REFERENCES College(college_id),
    FOREIGN KEY (cer_id) REFERENCES Certificate(cer_id)
);

CREATE TABLE User (
    u_id INT PRIMARY KEY,
    u_name VARCHAR(255),
    u_type VARCHAR(255),
    u_password VARCHAR(255)
);

-- Now you can execute your SELECT queries
SELECT * FROM Admin;
SELECT * FROM User;
SELECT * FROM College;
SELECT * FROM Certificate;
SELECT * FROM Placement;
SELECT * FROM Student;
