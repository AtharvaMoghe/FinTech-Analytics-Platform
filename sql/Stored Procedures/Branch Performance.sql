
DELIMITER $$

CREATE PROCEDURE sp_GetBranchPerformance
(
    IN p_StartDate DATE,
    IN p_EndDate DATE
)

BEGIN

SELECT

    b.BranchID,
    b.BranchName,
    b.City,
    b.State,

    COUNT(t.TransactionID) AS TotalTransactions,

    ROUND(SUM(t.Amount),2) AS TotalTransactionValue,

    ROUND(AVG(t.Amount),2) AS AverageTransactionValue

FROM Branches b

JOIN Accounts a
    ON b.BranchID = a.BranchID

JOIN Transactions t
    ON a.AccountID = t.AccountID

WHERE DATE(t.TransactionDate)
BETWEEN p_StartDate
AND p_EndDate

GROUP BY

    b.BranchID,
    b.BranchName,
    b.City,
    b.State

ORDER BY

    TotalTransactionValue DESC;

END$$

DELIMITER ;

