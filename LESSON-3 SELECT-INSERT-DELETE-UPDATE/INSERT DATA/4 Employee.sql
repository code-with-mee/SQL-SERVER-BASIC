--Insert Employee
DECLARE @row INT;
DECLARE @next INT
SET @row = 100;
SET @next = 1;
WHILE @next <= @row
BEGIN
	INSERT INTO Employee VALUES (@next,
									CONCAT('Employee-',@next),
									CONCAT('username',@next),
									'123456789',
									1000,
									CONCAT('017-789-0',@next),
									CONCAT('Address-',@next),
									GETDATE(),
									GETDATE()
									)
	SET @next +=1;
END