--SELECT TOP
SELECT TOP(1) * FROM Category

SELECT TOP(10) * FROM Product

SELECT TOP(15) ProductName,CostPrice,SellingPrice  FROM Product

SELECT TOP(30) * FROM Sale
WHERE SaleId > 10 AND SaleId < 50

SELECT TOP(50) * FROM Purchase
WHERE AmountPaid >= 1000 OR AmountRemain < 500
ORDER BY PurchaseId DESC

SELECT TOP(30) ProductId,ProductName,SellingPrice,Unit
FROM Product
WHERE CategoryId = 1
ORDER BY ProductId DESC