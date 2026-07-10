DELIMITER $$

CREATE PROCEDURE sp_GetHighValueTransactions
(
    IN p_MinAmount DECIMAL(12,2),
    IN p_StartDate DATE,
    IN p_EndDate DATE
)

BEGIN

SELECT

    t.TransactionID,
    t.TransactionDate,
    CONCAT(c.FirstName,' ',c.LastName) AS CustomerName,
    m.MerchantName,
    pm.MethodName AS PaymentMethod,
    t.Amount,
    t.TransactionType,
    t.Status

FROM Transactions t

JOIN Accounts a
    ON t.AccountID = a.AccountID

JOIN Customers c
    ON a.CustomerID = c.CustomerID

JOIN Merchants m
    ON t.MerchantID = m.MerchantID

JOIN PaymentMethods pm
    ON t.PaymentMethodID = pm.PaymentMethodID

WHERE

    t.Amount >= p_MinAmount

    AND DATE(t.TransactionDate)
        BETWEEN p_StartDate
        AND p_EndDate

ORDER BY

    t.Amount DESC;

END$$

DELIMITER ;

CALL sp_GetHighValueTransactions(
    50000,
    '2025-01-01',
    '2025-12-31'
);