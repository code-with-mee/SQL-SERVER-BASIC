--HAVING
SELECT COUNT(ProductId) as CountProduct 
FROM Product
GROUP BY CategoryId
HAVING COUNT(ProductId) > 25

SELECT Category.CategoryName, 
		COUNT(ProductId) as CountProduct
FROM Product
INNER JOIN Category
ON Product.CategoryId = Category.CategoryId
GROUP BY Category.CategoryName, Category.CategoryId
HAVING COUNT(ProductId) >= 28

SELECT Sale.SaleId,
		COUNT(SaleDetail.ProductId) As CountProductId
FROM SaleDetail
INNER JOIN Sale
ON SaleDetail.SaleId = Sale.SaleId
GROUP BY Sale.SaleId,SaleDetail.ProductId
HAVING COUNT(SaleDetail.ProductId) > 20
ORDER BY Sale.SaleId ASC

SELECT Sale.SaleId,
		COUNT(SaleDetail.ProductId)  as CountProductId
FROM SaleDetail
INNER JOIN Sale
ON SaleDetail.SaleId = Sale.SaleId
WHERE Sale.SaleId > 20
GROUP BY Sale.SaleId,SaleDetail.ProductId
HAVING COUNT(SaleDetail.ProductId) > 0 AND COUNT(SaleDetail.ProductId) < 100
ORDER BY Sale.SaleId ASC

SELECT Employee.EmployeeName,
		COUNT(Sale.SaleId) As CountSaleId
FROM Sale 
INNER JOIN Employee
ON Sale.EmployeeId = Employee.EmployeeId
WHERE Sale.SaleId >= 10 AND Sale.SaleId <= 50
GROUP BY Employee.EmployeeName,Sale.SaleId
HAVING COUNT(Sale.SaleId) > 10