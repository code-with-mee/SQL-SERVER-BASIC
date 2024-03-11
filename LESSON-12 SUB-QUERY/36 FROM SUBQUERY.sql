-- FROM SUBQUERY

SELECT *
FROM (
	SELECT InvoiceId,
			Amount,
			(SELECT SUM(Amount) FROM Sale) as TotalAmount,
			(SELECT AVG(Amount) FROM Sale) as Average	
	FROM Sale s
) as mq
WHERE mq.Amount > 500