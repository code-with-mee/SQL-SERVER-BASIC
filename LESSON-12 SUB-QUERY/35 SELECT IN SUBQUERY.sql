--SELECT IN SUBQUERY

SELECT  InvoiceId as gg,
		Amount,
		(SELECT AVG(Amount) FROM Sale) as Average
FROM Sale 

SELECT InvoiceId,
		c.Name as CustomerName,
		Amount ,
		(SELECT AVG(Amount) FROM Sale) as Average
FROM Sale s
INNER JOIN Customer c
ON s.CustomerId = c.Id
