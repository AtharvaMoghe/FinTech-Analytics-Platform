SELECT
    pm.MethodName,
    COUNT(t.TransactionID) AS TotalTransactions,
    ROUND(SUM(t.Amount), 2) AS TotalAmount,
    ROUND(AVG(t.Amount), 2) AS AverageAmount
FROM Transactions t
JOIN PaymentMethods pm
    ON t.PaymentMethodID = pm.PaymentMethodID
WHERE t.Status = 'Success'
GROUP BY pm.MethodName
ORDER BY TotalTransactions DESC;