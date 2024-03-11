--AGGREGATE FUNCTION
SELECT MIN(CostPrice) FROM Product
SELECT MAX(SellingPrice) FROM Product

SELECT COUNT(*) FROM Category
SELECT COUNT(CategoryId) FROM Category

SELECT SUM(Quantity) FROM Stock

SELECT AVG(CostPrice) as AverageCostPrice
		,AVG(SellingPrice)  as AverageSellingPrice
FROM Product


