
--Insert Category
DECLARE @row INT;
DECLARE @next INT
SET @row = 10;
SET @next = 1;
WHILE @next <= @row
BEGIN
	INSERT INTO Category VALUES (@next,
									CONCAT('Category-',@next),
									GETDATE(),
									GETDATE()
									)
	SET @next +=1;
END

