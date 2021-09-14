SELECT 
T.customerID,
T.depositID,
sender.customerName AS 'sender',
T.withdrawID,
reciplent.customerName AS 'reciplent',
T.amount, 
T.fee 
FROM transfers AS T
INNER JOIN customers AS sender
ON 
sender.customerID = T.depositID
INNER JOIN customers AS reciplent
ON 
reciplent.customerID = T.withdrawID
