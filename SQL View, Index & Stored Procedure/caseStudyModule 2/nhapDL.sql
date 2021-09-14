SELECT * FROM customers;
	INSERT INTO customers (cusID, fullName, age, address, phone)
	VALUES (NULL, 'Hieu', 22, '123 Dinh Tien Hoang', 0905112233);
    INSERT INTO customers (cusID, fullName, age, address, phone)
	VALUES (NULL, 'Chuong', 24, '15 Le Loi', 0905445566);
    INSERT INTO customers (cusID, fullName, age, address, phone)
	VALUES (NULL, 'Binh', 26, '10 Nguyen Hue', 0905112233);
    
SELECT * FROM products;
	INSERT INTO products (prID, cusID, fullName, color, fulldate, money)
    VALUES (NULL, 1, 'Nokia', 'Blue', sysdate(), 500);
    INSERT INTO products (prID, cusID, fullName, color, fulldate, money)
    VALUES (NULL, 2, 'Iphone', 'White', sysdate(), 1500);
    INSERT INTO products (prID, cusID, fullName, color, fulldate, money)
    VALUES (NULL, 1, 'Samsung', 'Black', sysdate(), 1200);