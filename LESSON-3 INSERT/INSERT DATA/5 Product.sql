--Insert Product
DECLARE @row INT;
DECLARE @next INT
SET @row = 100;
SET @next = 1;
WHILE @next <= @row
BEGIN
	DECLARE @CategoryId INT;
	SELECT @CategoryId = RAND()*(9-5)+1;
	INSERT INTO Product VALUES (@next,
									CONCAT('Product-',@next),
									@CategoryId,
									2000,
									3000,
									'box',
									GETDATE(),
									GETDATE()
									)
	SET @next +=1;
END