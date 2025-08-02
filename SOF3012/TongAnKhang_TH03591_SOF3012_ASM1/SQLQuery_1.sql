create database ASM1_SOF3012
use ASM1_SOF3012
CREATE TABLE Gym_Member (
    id INT IDENTITY PRIMARY KEY,
    member_code VARCHAR(20) NOT NULL UNIQUE,
    full_name NVARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20),
    dob DATE,
    join_date DATE,
    status VARCHAR(20)
);

CREATE TABLE Trainer (
    id INT IDENTITY PRIMARY KEY,
    full_name NVARCHAR(100),
    specialty NVARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE Class (
    id INT IDENTITY PRIMARY KEY,
    class_name NVARCHAR(100),
    trainer_id INT FOREIGN KEY REFERENCES Trainer(id),
    category NVARCHAR(50),
    schedule_time DATETIME,
    max_participants INT
);

CREATE TABLE Class_Registration (
    id INT IDENTITY PRIMARY KEY,
    member_id INT FOREIGN KEY REFERENCES Gym_Member(id),
    class_id INT FOREIGN KEY REFERENCES Class(id),
    register_date DATE,
    attendance_status VARCHAR(20)
);

create database demo 
use demo 
GO

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email NVARCHAR(100),
    PhoneNumber NVARCHAR(20),
    Address NVARCHAR(200),
    City NVARCHAR(100),
    Country NVARCHAR(100),
    PostalCode NVARCHAR(20),
    DateOfBirth DATE,
    CreatedAt DATETIME DEFAULT GETDATE(),
    IsActive BIT DEFAULT 1,
    Gender NVARCHAR(10),
    Notes NVARCHAR(MAX)
);
INSERT INTO Customers (FirstName, LastName, Email, PhoneNumber, Address, City, Country, PostalCode, DateOfBirth, Gender, Notes)
VALUES 
(N'Nguyen', N'Van A', N'vana@example.com', N'0901234567', N'123 Lê Lợi', N'Hà Nội', N'Việt Nam', N'100000', '1990-01-01', N'Nam', N'Khách hàng thân thiết'),
(N'Tran', N'Thi B', N'thib@example.com', N'0912345678', N'456 Nguyễn Huệ', N'TP.HCM', N'Việt Nam', N'700000', '1992-05-15', N'Nữ', N'Gọi lại sau 5h chiều'),
(N'Le', N'Van C', N'vanc@example.com', N'0933456789', N'789 Trần Hưng Đạo', N'Đà Nẵng', N'Việt Nam', N'550000', '1985-10-10', N'Nam', N''),
(N'Pham', N'Thi D', N'thid@example.com', N'0944567890', N'321 Pasteur', N'Cần Thơ', N'Việt Nam', N'900000', '2000-03-22', N'Nữ', N'Yêu cầu gửi báo giá'),
(N'Hoang', N'Van E', N'vane@example.com', N'0955678901', N'654 Hai Bà Trưng', N'Hải Phòng', N'Việt Nam', N'180000', '1995-12-30', N'Nam', N'VIP');
INSERT INTO Gym_Member ( member_code, full_name, email, phone, dob, join_date, status) VALUES
( 'M1000', N'Nguyễn Văn A', 'a.nguyen@example.com', '0901234567', '1990-01-01', '2023-05-01', 'Active'),
( 'M1001', N'Trần Thị B', 'b.tran@example.com', '0912345678', '1985-02-15', '2022-12-10', 'Active'),
( 'M1002', N'Lê Văn C', 'c.le@example.com', '0923456789', '1995-03-20', '2024-01-05', 'Suspended'),
( 'M1003', N'Phạm Thị D', 'd.pham@example.com', '0934567890', '1988-07-12', '2023-08-21', 'Active'),
( 'M1004', N'Hoàng Văn E', 'e.hoang@example.com', '0945678901', '1992-09-05', '2023-03-17', 'Inactive');

INSERT INTO Trainer (full_name, specialty, phone, email) VALUES
( N'Đặng Văn HLV1', 'Yoga', '0901111111', 'hlv1@example.com'),
( N'Ngô Thị HLV2', 'Cardio', '0912222222', 'hlv2@example.com'),
( N'Lý Văn HLV3', 'Strength', '0923333333', 'hlv3@example.com');

INSERT INTO Class ( class_name, trainer_id, category, schedule_time, max_participants) VALUES
( N'Yoga Class 1', 1, 'Yoga', '2025-08-10 09:00:00', 20),
( N'Cardio Class 1', 2, 'Cardio', '2025-08-11 17:30:00', 25),
( N'Strength Class 1', 3, 'Strength', '2025-08-12 06:00:00', 15),
( N'Yoga Class 2', 1, 'Yoga', '2025-08-13 08:00:00', 18),
( N'Cardio Class 2', 2, 'Cardio', '2025-08-14 18:00:00', 22);

INSERT INTO Class_Registration ( member_id, class_id, register_date, attendance_status) VALUES
(1, 1, '2025-07-10', 'Registered'),
( 2, 2, '2025-07-11', 'Attended'),
( 3, 3, '2025-07-12', 'Missed'),
( 1, 4, '2025-07-15', 'Attended'),
( 2, 1, '2025-07-16', 'Attended'),
( 4, 2, '2025-07-17', 'Registered'),
( 5, 5, '2025-07-18', 'Missed'),
( 1, 2, '2025-07-19', 'Attended'),
( 3, 4, '2025-07-20', 'Registered'),
( 2, 3, '2025-07-21', 'Attended');