SELECT
    CASE
        WHEN Amount < 5000 THEN 'Small'
        WHEN Amount BETWEEN 5000 AND 20000 THEN 'Medium'
        ELSE 'Large'
    END AS TransactionSize,
    COUNT(*) AS TotalTransactions,
    ROUND(SUM(Amount), 2) AS TotalAmount
FROM Transactions
WHERE Status = 'Success'
GROUP BY TransactionSize;