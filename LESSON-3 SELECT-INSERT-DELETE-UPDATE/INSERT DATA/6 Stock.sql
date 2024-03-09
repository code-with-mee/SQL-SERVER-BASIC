--Insert Stock
DECLARE @row INT;
DECLARE @next INT
SET @row = 100;
SET @next = 1;
WHILE @next <= @row
BEGIN
	DECLARE @ProductId INT;
	SELECT @ProductId = RAND()*(100-1)+1;
	INSERT INTO Stock VALUES (@ProductId,
								1000,
								'box',
								GETDATE(),
								GETDATE()
								)
	SET @next +=1;
END