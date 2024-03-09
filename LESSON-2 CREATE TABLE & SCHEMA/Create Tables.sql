CREATE TABLE Category (CategoryId INT NOT NULL PRIMARY KEY,
						CategoryName VARCHAR(50) NOT NULL,
						Created DATETIME,
						Updated DATETIME
						)
--DROP TABLE Category;

CREATE TABLE Customer (CustomerId INT NOT NULL PRIMARY KEY,
						CustomerName VARCHAR(50) NOT NULL,
						Phone VARCHAR(15),
						Address VARCHAR(500),
						Created DATETIME,
						Updated DATETIME
						)
--DROP TABLE Customer;

CREATE TABLE Supplier (SupplierId INT NOT NULL PRIMARY KEY,
						SupplierName VARCHAR(50) NOT NULL,
						Phone VARCHAR(15),
						Address VARCHAR(500),
						Created DATETIME,
						Updated DATETIME
						)
--DROP TABLE Supplier;

CREATE TABLE Employee (EmployeeId INT NOT NULL PRIMARY KEY,
						EmployeeName VARCHAR(50) NOT NULL,
						Username VARCHAR(50) NOT NULL,
						Password VARCHAR(500) NOT NULL,
						Salary FLOAT NOT NULL,
						Phone VARCHAR(15),
						Address VARCHAR(500),
						Created DATETIME,
						Updated DATETIME
						)
--DROP TABLE Employee;

--method1
CREATE TABLE Product (ProductId INT NOT NULL PRIMARY KEY,
						ProductName VARCHAR(50) NOT NULL,
						CategoryId INT REFERENCES Category(CategoryId),
						CostPrice FLOAT NOT NULL,
						SellingPrice FLOAT NOT NULL,
						Unit VARCHAR(50),
						Created DATETIME,
						Updated DATETIME
						)
--method1
--CREATE TABLE Product (ProductId INT NOT NULL,
--						ProductName VARCHAR(50) NOT NULL,
--						CategoryId INT,
--						CostPrice FLOAT NOT NULL,
--						SellingPrice FLOAT NOT NULL,
--						Unit VARCHAR(50),
--						Created DATETIME,
--						Updated DATETIME
--						PRIMARY KEY (ProductId),
--						CONSTRAINT FK_CategoryProduct FOREIGN KEY(CategoryID)
--						REFERENCES Category(CategoryId)
--						)
--DROP TABLE Product;

CREATE TABLE Stock (Id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
					ProductId INT NOT NULL REFERENCES Product(ProductId),
					Quantity INT NOT NULL,
					Unit VARCHAR(50),
					Created DATETIME,
					Updated DATETIME
					)
--DROP TABLE Stock;

CREATE TABLE Sale (SaleId INT NOT NULL PRIMARY KEY,
					EmployeeId INT NOT NULL REFERENCES Employee(EmployeeId),
					CustomerId INT NOT NULL REFERENCES Customer(CustomerId),
					Amount FLOAT NOT NULL,
					AmountPaid FLOAT NOT NULL DEFAULT(0),
					AmountRemain FLOAT NOT NULL DEFAULT(0),
					Created DATETIME,
					Updated DATETIME
					)
--DROP TABLE Sale;

CREATE TABLE SaleDetail (Id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
							SaleId INT NOT NULL REFERENCES Sale(SaleId),
							ProductId INT NOT NULL REFERENCES Product(ProductId),
							Quantity INT NOT NULL,
							TotalPrice FLOAT NOT NULL,
							Created DATETIME,
							Updated DATETIME
							)
--DROP TABLE SaleDetail;

CREATE TABLE Purchase (PurchaseId INT NOT NULL PRIMARY KEY,
						EmployeeId INT NOT NULL REFERENCES Employee(EmployeeId),
						SupplierId INT NOT NULL REFERENCES Supplier(SupplierId),
						Amount FLOAT NOT NULL,
						AmountPaid FLOAT NOT NULL,
						AmountRemain FLOAT NOT NULL,
						Created DATETIME,
						Updated DATETIME
						)
--DROP TABLE Purchase;

CREATE TABLE PurchaseDetail (Id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
								PurchaseId INT NOT NULL REFERENCES Purchase(PurchaseId),
								ProductId INT NOT NULL REFERENCES Product(ProductId),
								Quantity INT NOT NULL,
								TotalPrice FLOAT NOT NULL,
								Created DATETIME,
								Updated DATETIME
								)
--DROP TABLE PurchaseDetail;