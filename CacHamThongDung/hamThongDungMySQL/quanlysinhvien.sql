CREATE DATABASE quanlysinhvien;
USE quanlysinhvien;

CREATE TABLE class (
	classID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    className VARCHAR (45) NOT NULL,
    startDate DATETIME NOT NULL,
    status BIT
);

CREATE TABLE student (
	studentID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    studentName VARCHAR (45) NOT NULL,
    adress VARCHAR (45),
    phone VARCHAR (20),
    status BIT,
	classID INT NOT NULL,
    FOREIGN KEY (classID) REFERENCES class (classID) 
);

CREATE TABLE subject (
	subjectID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    subjectName VARCHAR (45) NOT NULL,
    credit  TINYINT NOT NULL DEFAULT 1 CHECK ( Credit >= 1 ),
    status  BIT DEFAULT 1
);

CREATE TABLE mark (
	markID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    subjectID INT NOT NULL,
    studentID INT NOT NULL,
    mark FLOAT   DEFAULT 0 CHECK ( mark BETWEEN 0 AND 100),
    examTimes TINYINT DEFAULT 1,
    UNIQUE (subjectID, studentID),
    FOREIGN KEY (subjectID) REFERENCES subject (subjectID),
    FOREIGN KEY (studentID) REFERENCES student (studentID)
);








