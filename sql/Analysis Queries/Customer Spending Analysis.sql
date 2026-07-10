SELECT
    c.CustomerID,
    CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName,
    COUNT(t.TransactionID) AS TotalTransactions,
    ROUND(SUM(
        CASE
            WHEN t.TransactionType = 'Debit' THEN t.Amount
            ELSE 0
        END
    ), 2) AS TotalSpent,
    ROUND(AVG(
        CASE
            WHEN t.TransactionType = 'Debit' THEN t.Amount
            END
    ), 2) AS AverageTransaction,
    MAX(t.TransactionDate) AS LastTransactionDate
FROM Customers c
JOIN Accounts a
    ON c.CustomerID = a.CustomerID
JOIN Transactions t
    ON a.AccountID = t.AccountID
WHERE t.Status = 'Success'
GROUP BY
    c.CustomerID,
    CustomerName
ORDER BY TotalSpent DESC
LIMIT 10;