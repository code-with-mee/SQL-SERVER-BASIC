--Correlated Subquery
SELECT *
FROM Sale

SELECT * FROM Sale s
WHERE Amount > (
	SELECT AVG(Amount)
	FROM Sale
	WHERE CustomerId = s.CustomerId
)

SELECT * FROM SaleDetail

SELECT * FROM SaleDetail sd
WHERE TotalPrice > (
	SELECT AVG(TotalPrice)
	FROM SaleDetail
	WHERE InvoiceId = sd.InvoiceId
)