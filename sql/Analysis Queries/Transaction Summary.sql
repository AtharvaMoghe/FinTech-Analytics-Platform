SELECT
    COUNT(*) AS TotalTransactions,
    ROUND(SUM(Amount), 2) AS TotalAmount,
    ROUND(AVG(Amount), 2) AS AverageAmount,
    MAX(Amount) AS HighestTransaction,
    MIN(Amount) AS LowestTransaction
FROM Transactions
WHERE Status = 'Success';