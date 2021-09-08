CREATE DATABASE quanlysinhvien;
USE quanlysinhvien;
CREATE TABLE class (
	classID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    classname VARCHAR (60) NOT NULL,
    startdate DATETIME NOT NULL,
    status BIT
);

CREATE TABLE student (
	studentID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    studentname VARCHAR (30) NOT NULL,
    address VARCHAR (50),
    phone VARCHAR (20),
    status BIT,
    classID INT NOT NULL
);

CREATE TABLE subject (
	subID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    subname VARCHAR (30) NOT NULL,
    credit TINYINT NOT NULL DEFAULT 1 CHECK ( credit >= 1 ),
    status BIT DEFAULT 1
);

CREATE TABLE mark (
	markID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    subID INT NOT NULL,
    studentID INT NOT NULL,
    mark FLOAT DEFAULT 0 CHECK ( mark BETWEEN 0 AND 100 ),
    examtimes TINYINT DEFAULT 1,
    UNIQUE (subID, studentID),
    FOREIGN KEY (subID) REFERENCES subject (subID),
    FOREIGN KEY (studentID) REFERENCES student (studentID)
);