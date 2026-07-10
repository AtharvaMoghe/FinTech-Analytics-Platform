SELECT
    m.MerchantName,
    m.Category,
    COUNT(t.TransactionID) AS TotalTransactions,
    ROUND(SUM(t.Amount),2) AS TotalAmount,
    ROUND(AVG(t.Amount),2) AS AverageTransaction
FROM Transactions t
JOIN Merchants m
ON t.MerchantID = m.MerchantID
WHERE t.Status = 'Success'
GROUP BY
    m.MerchantName,
    m.Category
ORDER BY TotalAmount DESC;