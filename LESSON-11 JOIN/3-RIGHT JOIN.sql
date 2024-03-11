--LEFT JOIN
SELECT * FROM Product
RIGHT JOIN Category 
ON Product.CategoryId = Category.CategoryId

SELECT * FROM Product
RIGHT JOIN SaleDetail
ON SaleDetail.ProductId = Product.ProductId

SELECT * FROM Employee
RIGHT JOIN Purchase
ON Purchase.EmployeeId =Employee.EmployeeId
