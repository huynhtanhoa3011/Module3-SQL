DROP PROCEDURE sp_deposit;
USE bankingtransaction;
	DELIMITER //
    CREATE PROCEDURE sp_deposit (IN id INT, IN amount DOUBLE)
    BEGIN
		UPDATE customers
		SET balance = balance + amount WHERE customers.customerID = id;
		
		INSERT INTO deposits (customerID, amount, fullday)
		VALUES (id, amount, sysdate());
    END //
    
    

DROP PROCEDURE sp_withdraw;
USE bankingtransaction;
DELIMITER //
CREATE PROCEDURE sp_withdraw (IN id INT, IN amount DOUBLE)
BEGIN
	DECLARE balance1 DOUBLE;
	SET balance1 = (SELECT c.balance FROM customers c WHERE c.customerID = id);
	IF (balance1 >= amount) THEN
	SET balance1 = balance1 - amount;

	UPDATE customers
	SET balance = balance1 WHERE customers.customerID = id;

	INSERT INTO withdraws (customerID, amount, fullday)
	VALUES (id, amount, sysdate());
	END IF;
END//



DROP PROCEDURE sp_transfers
USE bankingtransaction;
DELIMITER //
CREATE PROCEDURE sp_transfers (IN depositID INT, IN withdrawID INT, IN amount DOUBLE)
BEGIN
	DECLARE deposits_balance DOUBLE;
	DECLARE withdraws_balance DOUBLE;
    
    SET deposits_balance = (SELECT c.balance FROM customers c WHERE c.customerID = depositID);
	SET withdraws_balance = (SELECT c.balance FROM customers c WHERE c.customerID = withdrawID);
    
    IF (deposits_balance >= (amount + amount * 10 / 100))
    THEN
    SET deposits_balance = deposits_balance - (amount + amount * 10 / 100);
    SET withdraws_balance = withdraws_balance + amount;
    
    UPDATE customers
    SET balance = deposits_balance WHERE customers.customerID = depositID;
    UPDATE customers
    SET balance = withdraws_balance WHERE customers.customerID = withdrawID;
    
    INSERT INTO transfers (depositID, withdrawID, amount, fee, fulltime)
    VALUE (depositID, withdrawID, amount, amount*10/100, sysdate());
END IF;
END //




