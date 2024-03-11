--EXIST SUBQUERY
SELECT * FROM Supplier s
WHERE EXISTS (
	SELECT DISTINCT(SupplierId)
	FROM PurchaseOrder
	WHERE SupplierId = s.Id
)

SELECT * FROM Supplier
WHERE Id NOT IN (
	SELECT DISTINCT SupplierId 
	FROM PurchaseOrder
)

SELECT * FROM Supplier s
WHERE NOT EXISTS (
	SELECT SupplierId FROM PurchaseOrder
	WHERE SupplierId = s.Id
)