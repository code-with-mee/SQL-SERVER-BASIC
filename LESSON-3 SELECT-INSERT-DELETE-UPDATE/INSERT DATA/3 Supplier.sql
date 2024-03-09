--Insert Supplier
DECLARE @row INT;
DECLARE @next INT
SET @row = 100;
SET @next = 1;
WHILE @next <= @row
BEGIN
	INSERT INTO Supplier VALUES (@next,
									CONCAT('Supplier-',@next),
									CONCAT('012-789-0',@next),
									CONCAT('Address-',@next),
									GETDATE(),
									GETDATE()
									)
	SET @next +=1;
END