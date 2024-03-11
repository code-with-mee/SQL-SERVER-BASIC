--FULL OUTER JOIN
SELECT * FROM Product
FULL OUTER JOIN Category
ON Product.CategoryId = Category.CategoryId

SELECT * FROM Purchase
FULL OUTER JOIN Supplier
ON Purchase.SupplierId = Supplier.SupplierId
FULL OUTER JOIN Employee
ON Purchase.EmployeeId = Employee.EmployeeId

SELECT * FROM Sale
FULL OUTER JOIN Employee
ON Sale.EmployeeId = Employee.EmployeeId
FULL OUTER JOIN Customer
ON Sale.CustomerId = Customer.CustomerId

SELECT * FROM SaleDetail
FULL OUTER JOIN Product
ON SaleDetail.ProductId = Product.ProductId
FULL OUTER JOIN Sale
ON SaleDetail.SaleId = Sale.SaleId
FULL OUTER JOIN Employee
ON Sale.EmployeeId = Employee.EmployeeId
FULL OUTER JOIN Customer
ON Sale.CustomerId = Customer.CustomerId