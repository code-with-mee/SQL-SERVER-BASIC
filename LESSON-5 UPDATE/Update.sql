--UPDATE
UPDATE Category SET CategoryName = 'Category-update'
WHERE CategoryId = 1;

UPDATE Product 
SET CostPrice = 5000,
	SellingPrice = 1000
WHERE ProductId = 1;

Update Customer
SET Phone = '090999999',
	Address = 'Phnom Penh'
WHERE CustomerName = 'Customer-2'

UPDATE Supplier
SET SupplierName = 'new-supplier' --set all records