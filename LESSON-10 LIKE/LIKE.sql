--LIKE

SELECT * FROM Category
WHERE CategoryName LIKE 'C%'

SELECT * FROM Category 
WHERE CategoryName LIKE 'Category-%'

SELECT * FROM Product
WHERE ProductName LIKE 'Pr_duct-1' --wildcard 

SELECT * FROM Product 
WHERE ProductName LIKE '___duct-%'

SELECT * FROM Customer
WHERE CustomerName LIKE '___tomer__'
AND Phone LIKE '015_______'

SELECT * FROM Employee
WHERE EmployeeName LIKE '%1'

SELECT * FROM Employee
WHERE EmployeeName LIKE '%11'

SELECT * FROM Employee
WHERE EmployeeName LIKE '%1%'

SELECT * FROM Supplier
WHERE Phone LIKE '%789%'

SELECT * FROM Customer
WHERE CustomerName LIKE 'Custo___%'

SELECT * FROM Product
WHERE Unit LIKE 'box'