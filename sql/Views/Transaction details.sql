CREATE VIEW view_transaction_details AS

SELECT

    
    t.TransactionID,
    c.CustomerID,
    a.AccountID,
    b.BranchID,
    m.MerchantID,
    tc.CategoryID,
    pm.PaymentMethodID,

    
    t.TransactionDate,
    t.TransactionType,
    t.Status,
    t.Amount,
    t.IsFraud,

    
    CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName,
    c.Gender,
    c.City AS CustomerCity,
    c.State AS CustomerState,
    c.Occupation,
    c.CreditScore,

   
    a.AccountType,
    a.AccountStatus,
    a.CurrentBalance,

  
    b.BranchName,
    b.City AS BranchCity,
    b.State AS BranchState,

   
    m.MerchantName,
    m.Category AS MerchantCategory,
    m.City AS MerchantCity,

    
    tc.CategoryName,

   
    pm.MethodName AS PaymentMethod

FROM Transactions t

INNER JOIN Accounts a
    ON t.AccountID = a.AccountID

INNER JOIN Customers c
    ON a.CustomerID = c.CustomerID

INNER JOIN Branches b
    ON a.BranchID = b.BranchID

INNER JOIN Merchants m
    ON t.MerchantID = m.MerchantID

INNER JOIN TransactionCategories tc
    ON t.CategoryID = tc.CategoryID

INNER JOIN PaymentMethods pm
    ON t.PaymentMethodID = pm.PaymentMethodID;
    
    
    
