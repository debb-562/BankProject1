SELECT * FROM bank_transactions_data_2
LIMIT 10;
SELECT COUNT(*) FROM bank_transactions_data_2;
SELECT * FROM bank_transactions_data_2 
WHERE LoginAttempts > 1;

SELECT * FROM bank_transactions_data_2
WHERE LoginAttempts >1
AND TransactionAmount >1000;

SELECT * FROM bank_transactions_data_2 
WHERE CustomerOccupation = 'Student';

SELECT AVG(TransactionDuration) AS avg_transaction_duration
FROM bank_transactions_data_2;

SELECT MAX(TransactionDuration)  AS Max_duration,
       MIN(TransactionDuration)  AS Min_duration,
       AVG(TransactionDuration)  AS Avg_duration
FROM bank_transactions_data_2;


SELECT AccountID, TransactionAmount, LoginAttempts, TransactionDuration, TransactionDate
FROM bank_transactions_data_2
WHERE LoginAttempts > 3
AND TransactionDuration < 60
ORDER BY LoginAttempts DESC;

SELECT AVG(TransactionAmount) FROM bank_transactions_data_2;
SELECT * FROM bank_transactions_data_2
WHERE TransactionAmount>(SELECT AVG(TransactionAmount)  FROM bank_transactions_data_2)
AND LoginAttempts > 3;

SELECT* FROM bank_transactions_data_2
WHERE LoginAttempts >= 3
AND TransactionAmount > 1000
ORDER BY TransactionAmount DESC;


