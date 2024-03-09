--Insert Customer
DECLARE @row INT;
DECLARE @next INT
SET @row = 100;
SET @next = 1;
WHILE @next <= @row
BEGIN
	INSERT INTO Customer VALUES (@next,
									CONCAT('Customer-',@next),
									CONCAT('015-789-0',@next),
									CONCAT('Address-',@next),
									GETDATE(),
									GETDATE()
									)
	SET @next +=1;
END