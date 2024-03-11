--UNION
SELECT CustomerName FROM Customer
UNION 
SELECT EmployeeName FROM Employee
UNION 
SELECT SupplierName FROM Supplier --no duplicate value

SELECT CustomerName FROM Customer
UNION ALL
SELECT EmployeeName FROM Employee
UNION ALL
SELECT SupplierName FROM Supplier --allow duplicate value

SELECT EmployeeName FROM Employee
UNION ALL 
SELECT Customer.CustomerName FROM Sale
INNER JOIN Customer
ON Sale.CustomerId = Customer.CustomerId