create database lab6_sof3012
go
use lab6_sof3012
go
CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName NVARCHAR(100),
    Category NVARCHAR(50),
    Supplier NVARCHAR(100),
    QuantityInStock INT,
    UnitPrice DECIMAL(10, 2),
    ReorderLevel INT,
    Discontinued BIT DEFAULT 0,
    Description NVARCHAR(MAX),
    ManufactureDate DATE,
    ExpiryDate DATE,
    CreatedAt DATETIME DEFAULT GETDATE(),
    Barcode NVARCHAR(50)
);

INSERT INTO Products (ProductName, Category, Supplier, QuantityInStock, UnitPrice, ReorderLevel, Discontinued, Description, ManufactureDate, ExpiryDate, Barcode)
VALUES
(N'Sữa tươi Vinamilk 1L', N'Đồ uống', N'Vinamilk', 150, 29000.00, 50, 0, N'Sữa tươi không đường, hộp 1 lít', '2025-07-01', '2026-07-01', N'8934689212345'),
(N'Mì tôm Hảo Hảo', N'Thực phẩm khô', N'Acecook Việt Nam', 500, 3500.00, 100, 0, N'Mì ăn liền vị tôm chua cay', '2025-06-15', '2026-06-15', N'8934567890123'),
(N'Nước suối Lavie 500ml', N'Đồ uống', N'Nestlé Waters', 1000, 4000.00, 200, 0, N'Nước khoáng thiên nhiên đóng chai 500ml', '2025-07-10', '2027-07-10', N'8934678901234'),
(N'Bánh Oreo', N'Bánh kẹo', N'Mondelez', 300, 12000.00, 100, 0, N'Bánh quy kem socola', '2025-05-01', '2026-05-01', N'8934561230987'),
(N'Nước mắm Nam Ngư 500ml', N'Gia vị', N'Masan Consumer', 200, 25000.00, 80, 0, N'Nước mắm cá cơm nguyên chất', '2025-04-20', '2027-04-20', N'8936017361234');