SELECT
    City,
    COUNT(CustomerID) AS TotalCustomers
FROM Customers
GROUP BY City
ORDER BY TotalCustomers DESC
limit 10;