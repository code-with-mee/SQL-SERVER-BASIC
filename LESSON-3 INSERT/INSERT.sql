--Insert
INSERT INTO Category (CategoryId,CategoryName,Created,Updated)
						VALUES(101,'Category-101',GETDATE(),GETDATE())

INSERT INTO Category (CategoryId,CategoryName)
						VALUES(102,'Category-102')

INSERT INTO Category VALUES(103,'Category-103',GETDATE(),GETDATE())

INSERT INTO Customer VALUES(101,'Customer-101','090786756','Phnom Penh',GETDATE(),GETDATE())

INSERT INTO Product (ProductId,
						ProductName,
						CategoryId,
						CostPrice,
						SellingPrice,
						Unit)
					VALUES(101,
						'Product-101',
						1,
						2000,
						3000,
						'box')

INSERT INTO Sale VALUES (101,1,1,10000,9000,1000,GETDATE(),GETDATE())
						
