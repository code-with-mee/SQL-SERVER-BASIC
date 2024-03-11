--INNER JOIN
SELECT * FROM Product
INNER JOIN Category
ON Product.CategoryId = Category.CategoryId

SELECT Category.CategoryName,Product.* FROM Product
INNER JOIN Category
ON Product.CategoryId = Category.CategoryId

SELECT Category.* ,Product.ProductName,Product.Unit FROM Product
INNER JOIN Category
ON Product.CategoryId = Category.CategoryId

SELECT Product.ProductId,
		Product.ProductName,
		Category.CategoryName,
		Product.CostPrice,
		Product.SellingPrice,
		Product.Unit
FROM Product
INNER JOIN Category
ON Product.CategoryId = Category.CategoryId

SELECT p.ProductId,
		p.ProductName,
		c.CategoryName,
		p.CostPrice,
		p.SellingPrice,
		p.Unit
FROM Product p
INNER JOIN Category c
ON p.CategoryId = c.CategoryId

SELECT * FROM Sale
INNER JOIN Employee
ON Sale.EmployeeId = Employee.EmployeeId
INNER JOIN Customer
ON Sale.CustomerId = Customer.CustomerId

SELECT * FROM SaleDetail
INNER JOIN Product
ON SaleDetail.ProductId = Product.ProductId
INNER JOIN Sale 
ON Sale.SaleId = SaleDetail.SaleId
INNER JOIN Customer
ON Sale.CustomerId = Customer.CustomerId
INNER JOIN Employee 
ON Sale.EmployeeId = Employee.EmployeeId

SELECT TOP(50) Sale.SaleId,
				Product.ProductName,
				Product.SellingPrice,
				SaleDetail.TotalPrice,
				Product.Unit
FROM SaleDetail
INNER JOIN Product
ON SaleDetail.ProductId = Product.ProductId
INNER JOIN Sale 
ON Sale.SaleId = SaleDetail.SaleId
INNER JOIN Customer
ON Sale.CustomerId = Customer.CustomerId
INNER JOIN Employee 
ON Sale.EmployeeId = Employee.EmployeeId
WHERE Sale.SaleId > 5
ORDER BY Product.ProductName ASC