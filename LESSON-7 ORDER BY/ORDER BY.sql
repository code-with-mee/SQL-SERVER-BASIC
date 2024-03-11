--ORDER BY
SELECT * FROM Product ORDER BY Created DESC
SELECT * FROM Category ORDER BY Updated ASC

SELECT * FROM Product WHERE SellingPrice > 2000 ORDER BY ProductName DESC

SELECT * FROM Product 
WHERE CostPrice >= 2000 AND SellingPrice <= 5000
ORDER BY ProductId ASC

SELECT * FROM Customer 
WHERE CustomerId > 5 AND CustomerId < 50
ORDER BY Phone DESC