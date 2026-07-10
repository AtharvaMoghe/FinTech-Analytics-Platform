CREATE VIEW view_customer_summary AS

SELECT

    c.CustomerID,

    CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName,

    c.City,

    c.State,

    c.Occupation,

    c.CreditScore,

    COUNT(t.TransactionID) AS TotalTransactions,

    ROUND(SUM(t.Amount), 2) AS TotalSpent,

    ROUND(AVG(t.Amount), 2) AS AverageTransaction,

    MAX(t.TransactionDate) AS LastTransaction

FROM Customers c

JOIN Accounts a
    ON c.CustomerID = a.CustomerID

JOIN Transactions t
    ON a.AccountID = t.AccountID

WHERE t.Status = 'Success'

GROUP BY

    c.CustomerID,
    CustomerName,
    c.City,
    c.State,
    c.Occupation,
    c.CreditScore;
    
