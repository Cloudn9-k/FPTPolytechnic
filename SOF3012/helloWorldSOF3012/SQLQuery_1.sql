Create database sof3012_test
Use sof3012_test
CREATE TABLE EmployeeDetails (
    employee_id INT PRIMARY KEY IDENTITY(1,1),
    first_name NVARCHAR(50) NOT NULL,
    last_name NVARCHAR(50) NOT NULL,
    email NVARCHAR(100) UNIQUE NOT NULL,
    phone NVARCHAR(20),
    hire_date DATE NOT NULL,
    position NVARCHAR(100),
    salary DECIMAL(10, 2) CHECK (salary > 0), -- Lương phải lớn hơn 0
    department NVARCHAR(100),
    manager_id INT, -- ID của người quản lý trực tiếp (nếu có)
    birth_date DATE,
    address NVARCHAR(200),
    CONSTRAINT CHK_Email CHECK (email LIKE '%@%')
);

-- Thêm dữ liệu mẫu vào bảng
INSERT INTO EmployeeDetails (first_name, last_name, email, phone, hire_date, position, salary, department, manager_id, birth_date, address)
VALUES 
('John', 'Doe', 'john.doe@example.com', '123-456-7890', '2018-01-15', 'Software Engineer', 6000.00, 'IT', NULL, '1990-05-10', '123 Main St, City A'),
('Jane', 'Smith', 'jane.smith@example.com', '987-654-3210', '2019-03-20', 'HR Manager', 7000.00, 'Human Resources', NULL, '1985-07-25', '456 Oak Rd, City B'),
('Michael', 'Johnson', 'michael.johnson@example.com', '555-123-4567', '2020-06-12', 'Data Scientist', 8000.00, 'IT', 1, '1988-11-01', '789 Pine Ave, City C'),
('Alice', 'Brown', 'alice.brown@example.com', '555-987-6543', '2021-04-10', 'Marketing Specialist', 4500.00, 'Marketing', 2, '1992-12-17', '321 Birch St, City D');