CREATE DATABASE bankingTransaction;

USE bankingTransaction;

CREATE TABLE customers (
	customerID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    customerName VARCHAR (45) NOT NULL,
    age INT,
    balance DOUBLE
);

CREATE TABLE deposits (
	depositID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    customerID INT NOT NULL,
    amount DOUBLE,
    fullday DATETIME,
	FOREIGN KEY (customerID) REFERENCES customers (customerID)
);

CREATE TABLE withdraws (
	withdrawID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    customerID INT NOT NULL,
    amount DOUBLE,
    fullday DATETIME,
    FOREIGN KEY (customerID) REFERENCES customers (customerID)
);

CREATE TABLE transfers (
	transfersID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    customerID INT NOT NULL,
    amount DOUBLE,
    depositID INT NOT NULL,
    withdrawID INT NOT NULL,
    FOREIGN KEY (customerID) REFERENCES customers (customerID)
);