--SELECT
SELECT * FROM Category
SELECT * FROM Customer
SELECT * FROM Supplier
SELECT * FROM Employee
SELECT * FROM Product

SELECT ProductId,
		ProductName,
		SellingPrice,
		Unit
FROM Product

SELECT * FROM Stock
SELECT * FROM Sale
SELECT * FROM SaleDetail

SELECT PurchaseId as InvoiceId,
		EmployeeId,
		SupplierId,
		Amount as TotalAmount,
		AmountPaid as TotalAmountPaid
FROM Purchase

SELECT * FROM PurchaseDetail

--SELECT WHERE
SELECT * FROM Product WHERE ProductId = 1

SELECT * FROM Customer WHERE CustomerName = 'Customer-2'

