SELECT
    b.BranchName,
    b.City,
    b.State,
    COUNT(t.TransactionID) AS TotalTransactions,
    ROUND(SUM(t.Amount), 2) AS TotalTransactionValue,
    ROUND(AVG(t.Amount), 2) AS AverageTransactionValue
FROM Transactions t
JOIN Accounts a
    ON t.AccountID = a.AccountID
JOIN Branches b
    ON a.BranchID = b.BranchID
WHERE t.Status = 'Success'
GROUP BY
    b.BranchName,
    b.City,
    b.State
ORDER BY TotalTransactionValue DESC;