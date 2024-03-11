--GROUP BY
SELECT COUNT(ProductId) FROM Product
GROUP BY CategoryId

SELECT Category.CategoryName, COUNT(ProductId) FROM Product
INNER JOIN Category
ON Product.CategoryId = Category.CategoryId
GROUP BY Category.CategoryName, Category.CategoryId

SELECT Sale.SaleId,COUNT(SaleDetail.ProductId) FROM SaleDetail
INNER JOIN Sale
ON SaleDetail.SaleId = Sale.SaleId
GROUP BY Sale.SaleId,SaleDetail.ProductId
ORDER BY Sale.SaleId ASC

SELECT Sale.SaleId,COUNT(SaleDetail.ProductId) FROM SaleDetail
INNER JOIN Sale
ON SaleDetail.SaleId = Sale.SaleId
WHERE Sale.SaleId > 20
GROUP BY Sale.SaleId,SaleDetail.ProductId
ORDER BY Sale.SaleId ASC

SELECT Employee.EmployeeName,COUNT(Sale.SaleId) FROM Sale 
INNER JOIN Employee
ON Sale.EmployeeId = Employee.EmployeeId
WHERE Sale.SaleId >= 10 AND Sale.SaleId <= 50
GROUP BY Employee.EmployeeName,Sale.SaleId