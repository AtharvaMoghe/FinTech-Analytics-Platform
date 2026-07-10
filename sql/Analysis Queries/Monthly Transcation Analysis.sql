SELECT
    YEAR(TransactionDate) AS Year,
    MONTHNAME(TransactionDate) AS Month,
    COUNT(TransactionID) AS TotalTransactions,
    ROUND(SUM(Amount),2) AS TotalAmount
FROM Transactions
WHERE Status = 'Success'
GROUP BY
    YEAR(TransactionDate),
    MONTH(TransactionDate),
    MONTHNAME(TransactionDate)
ORDER BY
    YEAR(TransactionDate),
    MONTH(TransactionDate);