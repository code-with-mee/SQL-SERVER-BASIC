--Insert PurchaseDetail
DECLARE @row INT;
DECLARE @next INT
SET @row = 500;
SET @next = 1;
WHILE @next <= @row
BEGIN
	DECLARE @PurchaseId INT = RAND()*(100-1)+1;
	DECLARE @ProductId INT = RAND()*(100-1)+1;
	INSERT INTO PurchaseDetail VALUES (@PurchaseId,
								@ProductId,
								100,
								10000,
								GETDATE(),
								GETDATE()
								)
	SET @next +=1;
END