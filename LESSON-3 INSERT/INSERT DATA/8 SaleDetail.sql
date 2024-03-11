--Insert SaleDetail
DECLARE @row INT;
DECLARE @next INT
SET @row = 500;
SET @next = 1;
WHILE @next <= @row
BEGIN
	DECLARE @SaleId INT = RAND()*(100-1)+1;
	DECLARE @ProductId INT = RAND()*(100-1)+1;
	INSERT INTO SaleDetail VALUES (@SaleId,
								@ProductId,
								100,
								10000,
								GETDATE(),
								GETDATE()
								)
	SET @next +=1;
END