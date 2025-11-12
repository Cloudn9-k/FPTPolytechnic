CREATE TABLE Users(
	Username VARCHAR(50) NOT NULL,
	Password VARCHAR(50) NOT NULL,
	Enabled BIT NOT NULL,
	PRIMARY KEY (Username)
)

CREATE TABLE Roles(
	Id VARCHAR(50) NOT NULL PRIMARY KEY,
	Name NVARCHAR(50) NOT NULL,
)

CREATE TABLE UserRoles(
	Id BIGINT NOT NULL identity(1,1),
	Username VARCHAR(50) NOT NULL,
	RoleId VARCHAR(50) NOT NULL,
	FOREIGN KEY (RoleId) REFERENCES Roles(Id)
	ON DELETE CASCADE ON UPDATE CASCADE
)

INSERT INTO Users(Username,Password,Enabled) VALUES('user@gmail.com','{noop}123',1)
INSERT INTO Users(Username,Password,Enabled) VALUES('admin@gmail.com','{noop}123',1)
INSERT INTO Users(Username,Password,Enabled) VALUES('both@gmail.com','{noop}123',1)

INSERT INTO Roles(Id,Name) VALUES('ROLE_USER', N'Nhân viên')
INSERT INTO Roles(Id,Name) VALUES('ROLE_ADMIN', N'Quản lý')

INSERT INTO UserRoles(Username,RoleId) VALUES('user@gmail.com','ROLE_USER')
INSERT INTO UserRoles(Username,RoleId) VALUES('admin@gmail.com','ROLE_ADMIN')
INSERT INTO UserRoles(Username,RoleId) VALUES('both@gmail.com','ROLE_USER')
INSERT INTO UserRoles(Username,RoleId) VALUES('both@gmail.com','ROLE_ADMIN')
INSERT INTO UserRoles(Username,RoleId) VALUES('both@gmail.com','ROLE_ADMIN')