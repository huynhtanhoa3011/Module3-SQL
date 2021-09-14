SELECT * FROM customers;

CALL sp_deposit (1, 8000);
SELECT * FROM deposits;

CALL sp_withdraw (1, 3000);
SELECT * FROM withdraws;

SELECT * FROM transfers;
CALL sp_transfers (1, 2, 3000);