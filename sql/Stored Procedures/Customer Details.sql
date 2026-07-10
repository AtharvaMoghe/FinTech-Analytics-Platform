DELIMITER $$

CREATE PROCEDURE sp_GetCustomerProfile
(
    IN p_CustomerID INT
)

BEGIN

SELECT

    c.CustomerID,

    CONCAT(c.FirstName,' ',c.LastName) AS CustomerName,

    c.City,

    c.State,

    c.Occupation,

    c.CreditScore,

    a.AccountID,

    a.AccountType,

    a.AccountStatus,

    a.CurrentBalance,

    b.BranchName,

    COUNT(t.TransactionID) AS TotalTransactions,

    ROUND(SUM(t.Amount),2) AS TotalTransactionValue,

    MAX(t.TransactionDate) AS LastTransaction

FROM Customers c

JOIN Accounts a
    ON c.CustomerID = a.CustomerID

JOIN Branches b
    ON a.BranchID = b.BranchID

LEFT JOIN Transactions t
    ON a.AccountID = t.AccountID

WHERE c.CustomerID = p_CustomerID

GROUP BY

    c.CustomerID,
    CustomerName,
    c.City,
    c.State,
    c.Occupation,
    c.CreditScore,
    a.AccountID,
    a.AccountType,
    a.AccountStatus,
    a.CurrentBalance,
    b.BranchName;

END$$

DELIMITER ;
