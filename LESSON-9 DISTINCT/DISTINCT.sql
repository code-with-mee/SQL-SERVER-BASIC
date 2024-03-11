--SELECT DISTINCT
SELECT DISTINCT CategoryName FROM Category

SELECT DISTINCT CategoryId FROM Product

SELECT DISTINCT ProductId FROM SaleDetail
WHERE ProductId > 20 AND SaleId >= 50

SELECT DISTINCT TOP(2) EmployeeId   FROM Purchase

SELECT DISTINCT TOP(20) ProductId   FROM PurchaseDetail
WHERE PurchaseId >= 5 AND PurchaseId <= 50
ORDER BY ProductId DESC
