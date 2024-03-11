--LEFT JOIN
SELECT * FROM Category
LEFT JOIN Product 
ON Product.CategoryId = Category.CategoryId

SELECT * FROM SaleDetail
LEFT JOIN Product
ON SaleDetail.ProductId = Product.ProductId

SELECT * FROM Purchase
LEFT JOIN Employee
ON Purchase.EmployeeId =Employee.EmployeeId
