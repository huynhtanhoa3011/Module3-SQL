CREATE DATABASE casestudy;

CREATE TABLE customers (
	cusID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    fullName VARCHAR (45) NOT NULL,
    age TINYINT,
    address VARCHAR (45),
    phone VARCHAR (45)
);

CREATE TABLE products (
	prID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cusID INT NOT NULL,
    fullName VARCHAR (45) NOT NULL,
    color VARCHAR (45) NOT NULL,
    fulldate DATETIME,
    money DOUBLE,
    FOREIGN KEY (cusID) REFERENCES customers (cusID)
);