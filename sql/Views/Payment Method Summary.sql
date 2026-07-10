CREATE VIEW view_payment_method_summary AS

SELECT

    pm.PaymentMethodID,
    pm.MethodName,

    COUNT(t.TransactionID) AS TotalTransactions,

    ROUND(SUM(t.Amount), 2) AS TotalTransactionValue,

    ROUND(AVG(t.Amount), 2) AS AverageTransactionValue,

    SUM(CASE
            WHEN t.Status = 'Success' THEN 1
            ELSE 0
        END) AS SuccessfulTransactions,

    SUM(CASE
            WHEN t.Status = 'Failed' THEN 1
            ELSE 0
        END) AS FailedTransactions,

    SUM(CASE
            WHEN t.Status = 'Pending' THEN 1
            ELSE 0
        END) AS PendingTransactions,

    SUM(CASE
            WHEN t.IsFraud = 1 THEN 1
            ELSE 0
        END) AS FraudulentTransactions

FROM PaymentMethods pm

JOIN Transactions t
    ON pm.PaymentMethodID = t.PaymentMethodID

GROUP BY

    pm.PaymentMethodID,
    pm.MethodName;
    

    
    