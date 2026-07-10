

CREATE VIEW view_branch_summary AS

SELECT

    b.BranchID,
    b.BranchName,
    b.City,
    b.State,

    COUNT(DISTINCT a.CustomerID) AS TotalCustomers,

    COUNT(DISTINCT a.AccountID) AS TotalAccounts,

    COUNT(t.TransactionID) AS TotalTransactions,

    ROUND(SUM(t.Amount),2) AS TotalTransactionValue,

    ROUND(AVG(t.Amount),2) AS AverageTransactionValue,

    ROUND(AVG(a.CurrentBalance),2) AS AverageAccountBalance

FROM Branches b

JOIN Accounts a
    ON b.BranchID = a.BranchID

JOIN Transactions t
    ON a.AccountID = t.AccountID

WHERE t.Status = 'Success'

GROUP BY

    b.BranchID,
    b.BranchName,
    b.City,
    b.State;
    
    
