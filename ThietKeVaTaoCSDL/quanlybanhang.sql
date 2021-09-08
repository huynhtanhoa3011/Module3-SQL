CREATE DATABASE quanlybanhang;
USE quanlybanhang;
CREATE TABLE customer (
	cID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cname VARCHAR (60) NOT NULL,
    cage INT
);

CREATE TABLE orders (
	oID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cID INT NOT NULL,
    odate DATETIME,
    otatolprice FLOAT (20)
);

CREATE TABLE product (
	pID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    pname VARCHAR (45),
    pprice FLOAT (20)
);

CREATE TABLE orderdetail (
	oID INT NOT NULL,
    pID INT NOT NULL,
    odqty VARCHAR (45),
    UNIQUE (oID, pID),
    FOREIGN KEY (oID) REFERENCES orders (oID),
    FOREIGN KEY (pID) REFERENCES product (pID)
);