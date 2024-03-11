--DELETE
DELETE Category WHERE CategoryId = 1;

DELETE Category -- delete all categories.

DELETE Product WHERE ProductId > 50;

DELETE Product WHERE ProductName = 'Product-1';

DELETE Product 
WHERE CostPrice < 2000 AND SellingPrice > 3000;

DELETE Supplier WHERE SupplierName = 'Supplier-1' OR Phone = '090898989'

DELETE Customer WHERE NOT Phone = '090909090';