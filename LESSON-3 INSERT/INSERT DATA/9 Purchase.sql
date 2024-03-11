--Insert Purchase
DECLARE @row INT;
DECLARE @next INT
SET @row = 100;
SET @next = 1;
WHILE @next <= @row
BEGIN
	DECLARE @EmployeeId INT = RAND()*(100-1)+1;
	DECLARE @Supplier INT = RAND()*(100-1)+1;
	INSERT INTO Purchase VALUES (@next,
								@EmployeeId,
								@Supplier,
								10000,
								10000,
								0,
								GETDATE(),
								GETDATE()
								)
	SET @next +=1;
END