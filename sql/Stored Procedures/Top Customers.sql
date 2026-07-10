DELIMITER $$

CREATE PROCEDURE sp_GetTopCustomers
(
    IN p_TopN INT
)

BEGIN

SELECT

    c.CustomerID,

    CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName,

    COUNT(t.TransactionID) AS TotalTransactions,

    ROUND(SUM(t.Amount),2) AS TotalTransactionValue,

    ROUND(AVG(t.Amount),2) AS AverageTransactionValue,

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

ORDER BY

    TotalTransactionValue DESC

LIMIT p_TopN;

END$$

DELIMITER ;

