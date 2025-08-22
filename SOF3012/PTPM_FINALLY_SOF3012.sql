
CREATE DATABASE PTPM_FINALLY_SOF3012 
GO 
USE PTPM_FINALLY_SOF3012 
GO
/*
 Navicat Premium Dump SQL

 Source Server         : SQLServer
 Source Server Type    : SQL Server
 Source Server Version : 15002000 (15.00.2000)
 Source Host           : localhost:1433
 Source Catalog        : PTPM_FINALLY_SOF3012
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 15002000 (15.00.2000)
 File Encoding         : 65001

 Date: 25/11/2024 11:45:06
*/


-- ----------------------------
-- Table structure for chu_nha
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[chu_nha]') AND type IN ('U'))
	DROP TABLE [dbo].[chu_nha]
GO

CREATE TABLE [dbo].[chu_nha] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [ten] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [dia_chi] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [so_dien_thoai] nvarchar(15) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [email] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[chu_nha] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of chu_nha
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[chu_nha] ON
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'1', N'y1MnYOJ8xQ', N'BloS7myzU8', N'X9LrrCF2mq', N'itk02@yahoo.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'2', N'J6zmuCqyxL', N'aZhEwQVesj', N'RT69YjnOXQ', N'atan53@icloud.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'3', N'sLVi02GBcb', N'KvcTobMLIa', N'eOVKlFbeQh', N'ueda1966@outlook.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'4', N'mbAHybivcg', N'Wzag7Z1BGw', N'7qFSGqINkk', N'xiup61@outlook.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'5', N'nrOaGVFQ9C', N'uE3UGpXEON', N'FeBF7wZn2r', N'ishidahaz@icloud.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'6', N'20txRHxmKf', N'qTA6LV4lCB', N'wpSJmVKAYS', N'eitahara@mail.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'7', N'WaSrVHtyse', N'3FwKDhs08q', N'qwvkd4tDXL', N'tion@gmail.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'8', N'Kfe5LOUfp5', N'MX2u8qjfGp', N'LKb89jzTgM', N'warrfre@icloud.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'9', N'dHZJ4UoUSy', N'ZhrsTm9MLb', N'xjYKGEk5YT', N'yfang@mail.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'10', N'3Xdk8Cufpl', N'cE4OLBsqJZ', N'yRgMlekXpU', N'chewaiyee@mail.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'11', N't0b5WRoCtm', N'pXObRjTlYq', N'iQaN6Txp3D', N'anchang69@hotmail.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'12', N'Y5usJRMApc', N'stRATCtpcU', N'8LT05S3rs9', N'nakamori1@mail.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'13', N'J7hCbrzuTo', N'9rTBIT5r7Y', N'Wsiypa76Ch', N'fukudahika@gmail.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'14', N'5O6d9EJ1Ur', N'ncuAavCzIc', N'iUAiUEjY0B', N'tarena@gmail.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'15', N'edKvSzZ5er', N'ATFiEaqnXT', N'T0J3kwcx7q', N'maak@hotmail.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'16', N'YShrN0doXf', N'4ztyQp4u1X', N'dSqiAoAmcq', N'mendezra@icloud.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'17', N'MQlj6Axqht', N'OzlIPy60HT', N'vcucYdBSXy', N'sami69@mail.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'18', N'UfncBeOCzI', N'R6vFjMEA5T', N'94ak87jKGD', N'dunn125@mail.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'19', N'rEDtKfeQBA', N'evpcYncPt2', N'v84xnLHSCd', N'languo@icloud.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'20', N'YpgoBovUVT', N'nlkxsIlKo0', N'AAur5VBgOK', N'cheon@gmail.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'21', N'tMBYYEORb3', N'q1QOzLMBxa', N'C0y7EhfS1z', N'konganq@yahoo.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'22', N'LbL0wWLBZM', N'OzZn1SoohG', N'cTiVmiKnJr', N'fxiuying2006@gmail.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'23', N'9o2iTWPX7H', N'kKOg8KHpE6', N'tEm2bezowT', N'chcoleman@outlook.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'24', N'GeFC1tmDin', N'SVrbxLVpg4', N'NDKnj9AqfN', N'takuyakoy@outlook.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'25', N'R6upetyZvQ', N'77N46COcut', N'NtD2K3cM1I', N'mengji8@gmail.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'26', N'12HW2g3Zjn', N'mXh7hfRZmG', N'kpdSZgLLOk', N'hourui@icloud.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'27', N'YlcAB0leJY', N'Pr7INqvXd2', N'ocJSnK8LTc', N'hyuto@outlook.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'28', N'KwOOevCJOw', N'D9Fbhurxpz', N'XBPIXhaR2G', N'suns1944@icloud.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'29', N'ZjckE0PFJB', N'qAUBf8Zklq', N'RS0deiu2tn', N'as5@hotmail.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'30', N'BzgTLkdqSF', N'sRbGVTAT4P', N'XW9hE7kSWm', N'zyuning1974@outlook.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'31', N'qUBimz0zw4', N'Sw2Wr46gBq', N'9o4qt7WTxx', N'daotsuk@gmail.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'32', N'tLxhSGqs1Q', N'oujQI55lKH', N'Xt5dEp5ufk', N'schmidtjohnny@gmail.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'33', N'UcbcxK52ZB', N'vOOcMr58hj', N'VC2OPaY0AV', N'cytam@outlook.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'34', N'8HrxfciK8p', N'5Jvy2oGaUz', N'cz7UJlgJ7N', N'jialunw826@hotmail.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'35', N'mQdqu0FFSf', N'eBV3irseGG', N'AfHqWujdrO', N'taniguchi1105@mail.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'36', N'Vf8kOK7E9l', N'5EHo9sNh2z', N'GQ9Yy2Rygn', N'fongkk@gmail.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'37', N'FJMdvqvf8M', N'1fSO1ZXqq9', N'DEn6XEvLnz', N'msteven93@gmail.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'38', N'pMt9B9vJzu', N'JDpaCfW8Ad', N'hauJwZZFMu', N'ylm6@yahoo.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'39', N'FvVs7mhJJW', N'RnkOZDcZmh', N'ZnkG6dm8aE', N'cr924@gmail.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'40', N'oLF8Wnnj2X', N'Kjr2OV4f7h', N'r5mSqAfPe4', N'guoshiha@outlook.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'41', N'B9kP6NDf03', N'hM8hr5RhME', N'fjeNyNpZgG', N'moriao@mail.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'42', N'BpXCFKhFSn', N'5xHGe2H8MZ', N'KMhrbRld5p', N'wingkuenwong92@hotmail.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'43', N'jU7GoZdTHk', N'rSpYwxARlJ', N'eNi1cIOGFJ', N'anqmen@mail.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'44', N'DxL4OnnRMm', N'zX9c7X9K7O', N'PEIR70dINO', N'cwtin@yahoo.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'45', N'P6XrolHh4J', N'rHLdLn90FE', N'IW1jLgGrM7', N'yotas@mail.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'46', N'vy9xyDErAX', N'62JLbjjUDm', N'kP4bGrfrlH', N'yuto1214@icloud.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'47', N'XXwsuJRHJ1', N'ONACVuhvW2', N'oUGo7wyA13', N'cys@mail.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'48', N'RvXVOOykJw', N'c2bS0gwcbc', N'WwWR348o1a', N'saiwinghsu6@gmail.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'49', N'OXyuVVErUE', N'nXfiJstpOE', N'e8YjrqH5mj', N'fpayne@gmail.com')
GO

INSERT INTO [dbo].[chu_nha] ([id], [ten], [dia_chi], [so_dien_thoai], [email]) VALUES (N'50', N'WXWHheWpyF', N'IXgDpNbT02', N'xZk2F4dSxb', N'seikowada@mail.com')
GO

SET IDENTITY_INSERT [dbo].[chu_nha] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for chuc_vu
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[chuc_vu]') AND type IN ('U'))
	DROP TABLE [dbo].[chuc_vu]
GO

CREATE TABLE [dbo].[chuc_vu] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [ma] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ten] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[chuc_vu] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of chuc_vu
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[chuc_vu] ON
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'1', N'M7IfiJdr7l', N'TaEN5a07KV')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'2', N'ibiC32enkw', N'OX9ti61zBS')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'3', N'xmE1WzdkvY', N'EHJOYD5mSK')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'4', N'KhfhuJuU0C', N'r4OpHF9Xiw')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'5', N'GoIfl9j2PG', N'2faEtyOgEM')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'6', N'Z0CpInG5k8', N't8v4abT2BR')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'7', N'QtwtN5vUij', N'vrNz3ilPbI')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'8', N'5W3qrhE5hw', N'TEkMUSvAc4')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'9', N'GkSoa7HaPt', N'kh1Rp6xQ7U')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'10', N'Gn0U0rrUGJ', N'DqVyTBh4yT')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'11', N'Ytvw5ppkWF', N'wE696p29H3')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'12', N'oiKXD5v2Dn', N'QPaMSQwAHz')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'13', N'T5xj7R7WON', N'3tVQpQG1ba')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'14', N'WAbM9Ov9wb', N'oeEli8G202')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'15', N'0SI9Z2gic0', N'RkkEOtxusL')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'16', N'2e7lnS7n8q', N'oTOLS84fCt')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'17', N'hemwFP6C09', N'9BNPIzQYKb')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'18', N'u0kkWMPDCr', N'5lSdtGJv9F')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'19', N'WTeIRGF6Mw', N'dpvS27gbhH')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'20', N'Kcy0FXB5AP', N'7YGF9vkssr')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'21', N'Jfss4Sdrqj', N'tgtCp59Ak2')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'22', N'kg4x97nCq3', N'jQYF7Eh1Ix')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'23', N'sfniD9cr1Z', N'v0NuBm43sL')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'24', N'urHSo6NckU', N'rZsXb5s850')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'25', N'2lbZ9wOOpQ', N'jiSOglEbUq')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'26', N'HKBqpN34Lt', N'aSff0eHroe')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'27', N'Jxwg2uusA3', N'QYvcI3gnLo')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'28', N'Yyz6FvVQF8', N'GvFMeg9iCQ')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'29', N'N6rqy0JLOO', N'wfC9pTcKlf')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'30', N'zgxWpDMnd3', N'iNG0UtWlAf')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'31', N'gHZnwLUIXS', N'GmpJD9cb2T')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'32', N'INB9f1TV8B', N'YobhlteVvy')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'33', N'7mFqdYKtTC', N'RBULx3eHqR')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'34', N'7yJHzvkrrQ', N'mbvEvmJ4Qu')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'35', N'XxaWx5RdYN', N'kEKIhD6uQG')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'36', N'Q82srOzKf0', N'YXo8IfEezJ')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'37', N'WSoG5DRg7c', N'IYlQZSI3NW')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'38', N'72zJ9IHShe', N'KFhIlJ6SPE')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'39', N'UHmHsZq32Q', N'fPtOZCtEqC')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'40', N'cJGg4dbxxk', N'NmIZBfQKfe')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'41', N'9JBRuvv0oA', N's1JEjkOhaz')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'42', N'rsAgtoyTTf', N'6hs6X8F8k4')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'43', N'udc65oGCP9', N'avFEPDL2LS')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'44', N'6axsGRfNy4', N'0DZPZy37Qj')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'45', N'H2YKyYBOwF', N'nsWUjAnWjm')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'46', N'wWqk918Lg3', N'SIXQtvFYwV')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'47', N'7BP7DZsm4j', N'JzoaBoyB0V')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'48', N'Rlrm3DuaIE', N'b9m28ELzrD')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'49', N'fwaGuYLn1F', N'ox9uS0fcv4')
GO

INSERT INTO [dbo].[chuc_vu] ([id], [ma], [ten]) VALUES (N'50', N'BBbEpooTFm', N'ohyqI5QzL0')
GO

SET IDENTITY_INSERT [dbo].[chuc_vu] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for giao_dich
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[giao_dich]') AND type IN ('U'))
	DROP TABLE [dbo].[giao_dich]
GO

CREATE TABLE [dbo].[giao_dich] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [ngay_giao_dich] date  NULL,
  [gia_tri_giao_dich] decimal(18,2)  NULL,
  [nha_id] int  NULL,
  [khach_hang_id] int  NULL
)
GO

ALTER TABLE [dbo].[giao_dich] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of giao_dich
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[giao_dich] ON
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'1', N'2018-05-13', N'937.46', N'1', N'1')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'2', N'2024-01-10', N'38.19', N'1', N'1')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'3', N'2016-12-03', N'678.56', N'1', N'2')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'4', N'2007-07-31', N'86.06', N'1', N'2')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'5', N'2018-03-26', N'275.64', N'1', N'2')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'6', N'2003-08-23', N'562.87', N'2', N'2')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'7', N'2012-05-03', N'832.28', N'2', N'2')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'8', N'2003-07-02', N'964.59', N'2', N'2')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'9', N'2005-11-04', N'987.31', N'2', N'4')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'10', N'2014-05-01', N'537.17', N'2', N'4')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'11', N'2006-06-02', N'414.54', N'2', N'4')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'12', N'2024-04-29', N'227.61', N'2', N'4')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'13', N'2005-12-04', N'770.35', N'2', N'4')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'14', N'2014-06-26', N'256.93', N'2', N'4')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'15', N'2024-07-17', N'89.12', N'12', N'4')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'16', N'2024-04-17', N'723.54', N'12', N'6')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'17', N'2001-10-17', N'314.77', N'12', N'6')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'18', N'2011-05-31', N'544.16', N'12', N'6')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'19', N'2023-06-28', N'514.13', N'12', N'13')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'20', N'2016-12-26', N'285.03', N'15', N'13')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'21', N'2003-10-23', N'673.64', N'15', N'13')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'22', N'2019-02-27', N'932.67', N'15', N'13')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'23', N'2018-08-25', N'171.53', N'16', N'13')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'24', N'2011-03-18', N'348.20', N'24', N'13')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'25', N'2023-03-13', N'44.92', N'24', N'15')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'26', N'2014-01-04', N'919.58', N'25', N'15')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'27', N'2024-01-26', N'56.40', N'26', N'15')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'28', N'2017-12-25', N'891.87', N'26', N'36')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'29', N'2019-01-20', N'737.50', N'27', N'36')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'30', N'2003-12-24', N'213.46', N'22', N'36')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'31', N'2010-08-28', N'375.19', N'22', N'37')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'32', N'2023-10-22', N'980.46', N'2', N'37')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'33', N'2000-08-03', N'360.08', N'2', N'23')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'34', N'2009-06-26', N'566.86', N'2', N'23')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'35', N'2010-05-04', N'283.00', N'2', N'23')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'36', N'2015-09-21', N'493.58', N'24', N'25')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'37', N'2013-01-02', N'792.37', N'4', N'25')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'38', N'2022-07-23', N'967.65', N'4', N'33')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'39', N'2000-10-02', N'612.63', N'4', N'3')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'40', N'2004-08-20', N'669.70', N'6', N'3')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'41', N'2011-09-11', N'558.07', N'6', N'3')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'42', N'2004-10-05', N'117.44', N'7', N'6')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'43', N'2001-04-16', N'296.98', N'6', N'7')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'44', N'2009-11-08', N'896.20', N'7', N'8')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'45', N'2005-03-09', N'613.48', N'7', N'8')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'46', N'2012-04-19', N'208.96', N'7', N'8')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'47', N'2020-03-31', N'133.41', N'4', N'8')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'48', N'2015-12-19', N'745.32', N'4', N'8')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'49', N'2010-06-28', N'579.93', N'3', N'33')
GO

INSERT INTO [dbo].[giao_dich] ([id], [ngay_giao_dich], [gia_tri_giao_dich], [nha_id], [khach_hang_id]) VALUES (N'50', N'2008-06-20', N'855.41', N'1', N'22')
GO

SET IDENTITY_INSERT [dbo].[giao_dich] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for hoa_don
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[hoa_don]') AND type IN ('U'))
	DROP TABLE [dbo].[hoa_don]
GO

CREATE TABLE [dbo].[hoa_don] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [id_kh] int  NULL,
  [id_nv] int  NULL,
  [ma] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ngay_tao] date  NULL,
  [ngay_thanh_toan] date  NULL,
  [ngay_ship] date  NULL,
  [ngay_nhan] date  NULL,
  [tinh_trang] int  NULL,
  [ten_nguoi_nhan] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [dia_chi] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [sdt] varchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[hoa_don] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of hoa_don
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[hoa_don] ON
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'1', N'1', N'7', N'LWCLJlp3FG', N'2024-02-09', N'2015-03-01', N'2022-12-05', N'2008-09-05', N'1', N'MBT53hNOt2', N'0NIvW5vdHS', N'Nik69fN5co')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'2', N'1', N'7', N'o487SLV60i', N'2023-12-19', N'2009-10-28', N'2002-05-25', N'2003-05-16', N'1', N'mn4ksD031V', N'Ryml7AiUSM', N'2NYewIPc3e')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'3', N'1', N'7', N'yukrENTuuk', N'2009-03-08', N'2012-08-31', N'2018-08-14', N'2021-04-19', N'1', N'ZXRZqjqBZu', N'VUQFqc5JkI', N'52zE4zZwtz')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'4', N'1', N'7', N'vyxQ252dE6', N'2023-07-29', N'2017-02-12', N'2005-04-30', N'2015-08-24', N'1', N'RqepBbMT8j', N'eCoLdGK2LI', N'pOK8iU1ZWF')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'5', N'1', N'7', N'aUA8XEgcPr', N'2013-10-09', N'2005-05-07', N'2015-12-20', N'2004-05-24', N'1', N'HFTza2HEI4', N'NFp3HBzhDJ', N'rvd41pK59L')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'6', N'1', N'7', N'o3WqNy2CgH', N'2004-05-11', N'2005-11-10', N'2021-05-11', N'2004-12-26', N'1', N'FKdIoIbUGL', N'r3NIMsIHO0', N'nDQOwoSN4j')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'7', N'1', N'7', N'RmCAa3sw9e', N'2010-10-19', N'2010-07-19', N'2019-09-16', N'2008-10-22', N'1', N'QHosfnv8VW', N'okRloLgI9V', N'QM8oBcJQhz')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'8', N'2', N'7', N'6tejkLq2Ha', N'2002-11-29', N'2001-12-04', N'2002-09-12', N'2018-05-05', N'1', N'A6DHlsSS2W', N'P7SwoZE9Zp', N'jiwiAoGiDo')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'9', N'2', N'7', N'A3Vl4N8hW3', N'2000-07-30', N'2018-02-21', N'2018-04-02', N'2022-09-07', N'1', N'5A2TfbZ2Pp', N'IHUbuKq0hg', N'tj1BzKrANv')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'10', N'2', N'7', N'Gplc42YTMQ', N'2010-11-04', N'2010-03-03', N'2008-08-08', N'2014-04-14', N'1', N'iIN6pzanY2', N'VC4lmovSCB', N'nk1ob2op68')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'11', N'3', N'7', N'UgPXTfl6hI', N'2003-04-19', N'2023-12-27', N'2014-09-05', N'2014-06-27', N'1', N'OSJEdEpAXR', N'3mCahicld1', N'NXfyVi4Px5')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'12', N'3', N'7', N'SegY5CgSVw', N'2007-05-30', N'2003-08-23', N'2004-11-07', N'2007-12-06', N'1', N'mxr5A6xpfU', N'ovKL1AAAAw', N'XMw7TaS8Pw')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'13', N'3', N'7', N'bXI3uWZzrI', N'2015-12-19', N'2001-02-19', N'2020-05-21', N'2016-03-15', N'1', N'yomwd1nlYY', N'D3HuQpmTJt', N'bBtRS4UfHO')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'14', N'4', N'5', N'1F2zLyVeCj', N'2003-12-26', N'2015-09-30', N'2007-12-05', N'2009-09-01', N'1', N'PJB2IlI9Tu', N'iLq7Gb7CUR', N'a4j9MzTLVj')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'15', N'12', N'10', N'EODTy0aXt6', N'2007-02-22', N'2004-01-28', N'2019-03-25', N'2024-04-08', N'0', N'Ll6ELX44RZ', N'Q7sYbmlwiJ', N'ZJIZh5hJ8w')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'16', N'12', N'10', N'AGaSFvEj4h', N'2017-09-22', N'2002-11-21', N'2020-04-10', N'2012-04-03', N'0', N'jB6DC3p7zf', N'wDUfDF414L', N'AhxLsUinH9')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'17', N'3', N'10', N'nZtd9CDCXH', N'2003-03-09', N'2000-01-16', N'2015-03-22', N'2012-03-16', N'0', N'0YtWYaOArR', N'Yqetuz4D9Z', N'BpjW08czPj')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'18', N'14', N'10', N'cpV0Q7jdO0', N'2018-12-01', N'2016-03-16', N'2006-02-17', N'2006-04-15', N'0', N'8UzjfZHnMZ', N'MRaZyJ6fcK', N'7QEbhsxIf6')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'19', N'14', N'10', N'bl5vf0JPBG', N'2023-01-16', N'2012-10-02', N'2021-11-17', N'2009-09-08', N'0', N'hojbM6rXe1', N'874w0SPdAu', N'RbUxi8CKUd')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'20', N'14', N'10', N'PJWDlKGRgW', N'2001-11-02', N'2013-10-18', N'2021-11-14', N'2002-03-30', N'0', N'57MY2IhrDp', N'LP7J15Ur4i', N'gpvvcB1DNk')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'21', N'24', N'10', N'RFzSMiTcVh', N'2010-09-04', N'2000-09-20', N'2004-11-13', N'2021-07-18', N'0', N'AO8krmJo4U', N'JQz1fk6oe0', N'MulCA1U2a6')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'22', N'24', N'10', N'zANXVyaCXI', N'2005-09-06', N'2011-04-03', N'2015-07-22', N'2001-04-10', N'0', N'zetL9sM3JB', N'KLRgDcKOgg', N'ak6ODhwGCE')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'23', N'4', N'10', N'FHCKWCDzxt', N'2010-12-01', N'2022-02-23', N'2015-09-18', N'2008-04-05', N'0', N'gP6oPkCOxb', N'7TucaXiVXa', N'wABIQ3VQ6Q')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'24', N'2', N'10', N'Jj5yXjdGFo', N'2004-12-13', N'2006-06-15', N'2003-08-10', N'2018-12-09', N'0', N'Xwxd2ZGCyV', N'4VdOYWeAiR', N'bbOoeJ0vFP')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'25', N'2', N'10', N'fgw3d3jtRs', N'2014-10-26', N'2005-08-05', N'2010-06-11', N'2022-03-04', N'0', N'KuTfO4QzFE', N'BQjvI2JeAS', N'OLovnD8TWw')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'26', N'2', N'10', N'rXIPY9Iyhy', N'2006-03-22', N'2017-10-11', N'2019-05-29', N'2019-11-09', N'0', N'K60RBufwB7', N'2r1Jc1LaIs', N'bxorjpEarn')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'27', N'4', N'10', N'eHcfTo6D0W', N'2012-09-14', N'2022-07-21', N'2021-05-15', N'2024-03-05', N'0', N'VDYGghKGil', N'lPZ42oUrx3', N'9cCck4ox2a')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'28', N'4', N'10', N'bRxkz81S73', N'2023-12-02', N'2019-03-28', N'2018-11-14', N'2018-02-14', N'0', N'if6bcwmxuB', N'mdmssWC67G', N'tqRanrseA4')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'29', N'4', N'10', N'K09y3wJTer', N'2008-12-13', N'2000-03-17', N'2020-08-08', N'2001-02-02', N'0', N'bg5OxKnImy', N'l1Saclih4v', N'42Qg9XzKRe')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'30', N'4', N'10', N'DPR7eToTHK', N'2007-08-02', N'2023-10-10', N'2008-12-24', N'2021-08-08', N'0', N'jm1KcmNkEL', N'fn9rzuMZdF', N'RlEoI1r3rW')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'31', N'4', N'10', N'ZUOsDp0ovB', N'2010-10-23', N'2016-10-06', N'2012-02-16', N'2000-02-07', N'0', N'8nQvtCnhlE', N'xdeHazWXKL', N'0BQzsE9fVE')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'32', N'4', N'10', N'XVeACNmh0I', N'2012-07-20', N'2004-03-20', N'2001-12-30', N'2005-09-06', N'0', N'UR7b80VDxl', N'IuFjFWBIJl', N'am9eALolFJ')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'33', N'4', N'10', N'jchxhhEW6U', N'2006-02-27', N'2001-02-18', N'2000-05-04', N'2007-06-19', N'0', N'PZwkcvSnOg', N'10uif54vNq', N'be2Pj7bHPx')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'34', N'4', N'10', N'zYbCI3Z6gt', N'2021-05-09', N'2020-04-25', N'2011-07-28', N'2010-01-04', N'0', N'OHz0jgx533', N'N1317Eullo', N'5cdR7pZgZC')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'35', N'5', N'10', N'FETf0RHXZP', N'2010-12-10', N'2002-05-12', N'2018-03-15', N'2002-02-20', N'0', N'sggIsOjEH9', N'JXLnGpfrt1', N'5ajsFOT5Z2')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'36', N'5', N'10', N'cK62NcczPG', N'2007-09-14', N'2021-08-07', N'2000-01-07', N'2015-06-01', N'0', N'B13x2ULPNu', N'LKU9zFIPDM', N'3FVUksQdhq')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'37', N'5', N'10', N'f7LbSV1RuI', N'2018-09-23', N'2016-11-12', N'2008-08-01', N'2006-08-13', N'0', N'Gb0bsmvPJS', N'qxFk874rln', N'6Estr6DG8J')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'38', N'5', N'10', N'joVr8U1YZN', N'2015-06-03', N'2019-03-18', N'2002-11-29', N'2013-03-14', N'0', N'l45p5gP5sW', N'W2bLp7GnEq', N'OG0eSjnWOF')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'39', N'5', N'10', N'HHVl2iwqXQ', N'2015-11-04', N'2024-02-18', N'2000-11-04', N'2020-08-23', N'0', N'x4IorAbHRO', N'ZSlSJaQBYh', N'vaxXmKazLW')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'40', N'5', N'10', N'iwCWeHNZwg', N'2003-11-09', N'2011-02-02', N'2004-06-15', N'2023-08-04', N'0', N'fdibs805rO', N'00vjKvxpzJ', N'T3gzN34DOA')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'41', N'5', N'10', N'e85BadlAnM', N'2017-11-13', N'2022-01-24', N'2023-04-09', N'2017-01-01', N'0', N'EquUN6W5Ro', N'eWr6zf5M6q', N'Swdw5TjXZg')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'42', N'5', N'10', N'fNOM9syrtN', N'2004-08-08', N'2000-12-22', N'2000-11-25', N'2010-06-13', N'0', N'eM4QsBQdhm', N'zDvvSWqp7s', N'hsck5h8SBP')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'43', N'5', N'10', N'7SVRsBBlm0', N'2005-07-11', N'2016-05-29', N'2012-11-20', N'2010-03-31', N'0', N'Fd86qPqsWt', N'Xzrxi6ffMv', N'892tPP0c0u')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'44', N'5', N'10', N'9lhn2pIZ4k', N'2012-12-17', N'2019-08-19', N'2010-03-09', N'2022-06-19', N'0', N'snSJknvUPS', N'o2Th8DmeXD', N'Nrz2QERpR5')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'45', N'5', N'10', N'GH6geLK7r4', N'2016-09-09', N'2000-02-24', N'2005-08-10', N'2024-02-19', N'0', N'HzZY27f6jj', N'uysRga5tdd', N'6uBh7a8rm3')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'46', N'5', N'10', N'6dfNSCoSE2', N'2017-05-17', N'2016-01-05', N'2003-10-04', N'2017-03-29', N'0', N'PM1UhKWaCR', N'jTjPXdsfEY', N'qvha0sY5R3')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'47', N'5', N'10', N'u61B5lQ5Q2', N'2003-11-18', N'2024-02-07', N'2023-03-17', N'2003-04-13', N'0', N'lP0T9LJ18g', N'C9RPE8yYpr', N'xxuoCgjrb4')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'48', N'5', N'10', N'pxYkGAIki1', N'2016-04-03', N'2011-06-02', N'2018-09-18', N'2008-07-17', N'0', N'GstZXXNGrE', N'u9avhvtg8b', N'56FAztFLIW')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'49', N'6', N'10', N'8L7LDMHoDi', N'2015-04-07', N'2016-04-13', N'2001-09-14', N'2005-04-15', N'0', N'6vpGV5fsh9', N'xFu1zIcQXE', N'xR7VYC1a4L')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'50', N'6', N'10', N'REIfWlN2Mh', N'2014-08-08', N'2016-05-29', N'2006-11-02', N'2009-09-10', N'0', N'ZW8AeOrGE0', N'aRoP6XnwjR', N'Sxt9rFcfjJ')
GO

INSERT INTO [dbo].[hoa_don] ([id], [id_kh], [id_nv], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_ship], [ngay_nhan], [tinh_trang], [ten_nguoi_nhan], [dia_chi], [sdt]) VALUES (N'51', NULL, N'10', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL)
GO

SET IDENTITY_INSERT [dbo].[hoa_don] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for hoa_don_chi_tiet
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[hoa_don_chi_tiet]') AND type IN ('U'))
	DROP TABLE [dbo].[hoa_don_chi_tiet]
GO

CREATE TABLE [dbo].[hoa_don_chi_tiet] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [id_hoa_don] int  NULL,
  [id_sp] int  NULL,
  [so_luong] int  NULL,
  [don_gia] decimal(20)  NULL
)
GO

ALTER TABLE [dbo].[hoa_don_chi_tiet] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of hoa_don_chi_tiet
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[hoa_don_chi_tiet] ON
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'1', N'7', N'3', N'609', N'719')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'2', N'7', N'3', N'383', N'227')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'3', N'7', N'3', N'402', N'97')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'4', N'7', N'3', N'353', N'899')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'5', N'7', N'3', N'185', N'932')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'6', N'7', N'3', N'694', N'808')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'7', N'7', N'3', N'139', N'875')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'8', N'7', N'3', N'681', N'301')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'9', N'7', N'3', N'915', N'686')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'10', N'7', N'3', N'615', N'819')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'11', N'7', N'3', N'188', N'240')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'12', N'7', N'3', N'598', N'4')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'13', N'7', N'3', N'120', N'313')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'14', N'8', N'5', N'602', N'586')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'15', N'8', N'5', N'166', N'819')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'16', N'8', N'5', N'845', N'940')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'17', N'8', N'5', N'812', N'125')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'18', N'8', N'5', N'916', N'962')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'19', N'8', N'5', N'858', N'389')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'20', N'8', N'5', N'737', N'126')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'21', N'8', N'5', N'210', N'406')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'22', N'8', N'5', N'11', N'186')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'23', N'8', N'5', N'903', N'820')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'24', N'8', N'5', N'266', N'70')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'25', N'2', N'1', N'795', N'339')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'26', N'2', N'1', N'72', N'950')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'27', N'2', N'1', N'238', N'533')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'28', N'2', N'1', N'659', N'321')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'29', N'2', N'1', N'453', N'510')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'30', N'2', N'1', N'387', N'861')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'31', N'2', N'1', N'275', N'453')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'32', N'2', N'1', N'661', N'91')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'33', N'2', N'1', N'924', N'983')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'34', N'2', N'1', N'131', N'667')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'35', N'2', N'1', N'6', N'801')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'36', N'2', N'1', N'376', N'603')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'37', N'2', N'1', N'907', N'786')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'38', N'2', N'1', N'122', N'173')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'39', N'2', N'1', N'325', N'830')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'40', N'2', N'1', N'850', N'424')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'41', N'2', N'1', N'296', N'199')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'42', N'2', N'1', N'956', N'872')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'43', N'2', N'1', N'526', N'546')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'44', N'2', N'1', N'260', N'483')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'45', N'2', N'1', N'301', N'235')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'46', N'2', N'1', N'823', N'327')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'47', N'2', N'1', N'866', N'378')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'48', N'2', N'1', N'133', N'962')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'49', N'2', N'1', N'972', N'710')
GO

INSERT INTO [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_sp], [so_luong], [don_gia]) VALUES (N'50', N'2', N'1', N'684', N'831')
GO

SET IDENTITY_INSERT [dbo].[hoa_don_chi_tiet] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for loai_phieu_giam_gia
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[loai_phieu_giam_gia]') AND type IN ('U'))
	DROP TABLE [dbo].[loai_phieu_giam_gia]
GO

CREATE TABLE [dbo].[loai_phieu_giam_gia] (
  [id] int  NOT NULL,
  [ma] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ten] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[loai_phieu_giam_gia] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of loai_phieu_giam_gia
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'1', N'mynAfnUMXi', N'gNxAq4Fe7N')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'2', N'uufz4Nd6kS', N'jndIhDl0VG')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'3', N'zJUVVeQkqZ', N'sWYkuS1xaq')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'4', N'UVx7URrQ4v', N'BKSgh4CYWf')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'5', N'2lShsBYZG2', N'2Dyo3Yuhkm')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'6', N'7kq5HBndGw', N'2y27tOQtcB')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'7', N'sXo0BtTvMw', N'Q7Hj0bOR3h')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'8', N'5OxGuPdVPH', N'qw6tCTeTSW')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'9', N'ySDX5EJ9sT', N'bNp7sHOJwz')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'10', N'IQBtXWzIUi', N'qYmaWlRHQy')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'11', N'auTPrdGmuf', N'sxmnKa9bUb')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'12', N'Vx2nRWHt3w', N'MyPzTKYb0S')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'13', N'PfRCtAtRZD', N'6fgrYGy99F')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'14', N'6VPuZf6VEG', N'd5B90w847E')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'15', N'NKvYfVl7ln', N'NsMN8Tl0N9')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'16', N'XRpbKceJ2p', N'xeXpgfuZlG')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'17', N'oytlR1SeFc', N'X8RF8GfVnM')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'18', N'Vci1BhXFLT', N'blN8pH6P3x')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'19', N'twJPZWKp0h', N'9F8ehh71oA')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'20', N'GTEzY5vJ2P', N'6L4WTgBUes')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'21', N'wShx8GbNDx', N'S1bWhPhTwP')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'22', N'SsKLW7oMbI', N'BU7sZkIgar')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'23', N'F1vYXOpe0x', N'E6CSwZ53ZQ')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'24', N'pIN4UvWko9', N'EGM5lsb1OQ')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'25', N'0kwzDrbwT7', N'LWHzhqxixB')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'26', N'2iX7rC5CkO', N'nGToZTVXl9')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'27', N'surEvhg3ML', N'RRKYoGUSI1')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'28', N'm8C0Rvezg4', N'oG38ztMUNa')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'29', N'rHmnsTqx6R', N's7dJGHpECF')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'30', N'rB4MWElLK6', N'Pa2jyocecI')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'31', N'oxr4q0ltju', N'uEni19sNTH')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'32', N'KnPyCXVOaY', N'EbDEOXf9Vv')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'33', N'A1dwo30MlU', N'A5FPXELGqm')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'34', N'3fMhMr6HTy', N'DuyzdXdyBz')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'35', N'9abQXOspA2', N'7treWyB5hO')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'36', N'8gxEsAlEEi', N'1RccBMlIB1')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'37', N'nGlcwXcRpL', N'GYjKZDvqSs')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'38', N'NUmnAXgR5M', N'Ksh5lfJuTs')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'39', N'0WK9JqmR7g', N'PTogp6XUHY')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'40', N'BmHLdAd1Rn', N'oDOcQp7OS6')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'41', N'xcAzk18jMu', N'cfkFRkpKEY')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'42', N'6umR8PBbf2', N'pk2aSv10E7')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'43', N'b3WhS9TVik', N'dYZohuwgIk')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'44', N'qzIFPnvIFw', N'92gCnhlD8e')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'45', N'PaEZnc8C0b', N'nvWOT6anIn')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'46', N'iLBOwrhQxC', N'knq1PRYljg')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'47', N'2dX39JkUmV', N'XYyYrfbOwQ')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'48', N'fBYr8Kt5AX', N'WbwIeHepBh')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'49', N'nrp58WnsBP', N'orJYWlCIBx')
GO

INSERT INTO [dbo].[loai_phieu_giam_gia] ([id], [ma], [ten]) VALUES (N'50', N'u5u5pBwagl', N'SaJYI6gadJ')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for loai_phong_ban
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[loai_phong_ban]') AND type IN ('U'))
	DROP TABLE [dbo].[loai_phong_ban]
GO

CREATE TABLE [dbo].[loai_phong_ban] (
  [id] int  NOT NULL,
  [ma] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ten] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [so_luong] int  NULL,
  [ghi_chu] nvarchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[loai_phong_ban] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of loai_phong_ban
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'1', N'7TKWZrrpCx', N'iSyQEZkCoK', N'454', N'VmB3zQCZNf')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'2', N'mUVn42eu9l', N'eGfxKqWVIx', N'993', N'xmWxW7yuK7')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'3', N'NUwZ1D9gjN', N'LaizFNoobn', N'13', N'6qBGcxVB7I')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'4', N'68mSmOaaQj', N'M3Kgo2KelG', N'98', N'FDdsHti9MO')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'5', N'kypl9mkNz0', N'DEKH7KOMOU', N'143', N'WXpDCVQlxw')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'6', N'nZ4q9ms1n7', N'ipHAdyFfCG', N'134', N'fvHTsWSity')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'7', N'MblBa6QMX7', N'JQ12feehO4', N'829', N'Fzp0wMnTM8')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'8', N'65UtirMro6', N'Rux2GCui0n', N'520', N'4NO61grY2N')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'9', N'iI52ZVAPuP', N'eSUdBmkBLN', N'28', N'7QRvTYOKUS')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'10', N'j45Zbg4SdL', N'O4CQgfZKJw', N'27', N'Zd6ehY8GiI')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'11', N'7U9RFbZE4p', N'nL8QBQglVP', N'415', N'duQ4LI6dBV')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'12', N'oZbNXpzkiv', N'2vngltqzfR', N'503', N'Bm319UY1Qx')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'13', N'h1BkOtJvnh', N'tPAyc89zaF', N'827', N'HPDfGljw8H')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'14', N'5S390Bpnnk', N'ArRyWxHecn', N'552', N'kYCKMvjZeM')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'15', N'tMtu8R0Dan', N'LmW1mwT3fG', N'70', N'3okjFTIPsL')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'16', N'F6spoKUdyH', N'MaRfpexe8e', N'502', N'wCIpzIOEwm')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'17', N'rmlLqREbCN', N'TTbyaaDpzA', N'923', N'fbcdiUPv5t')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'18', N'0FyOT1lqbu', N'ymVhhCpLQM', N'497', N'HXd5HbPT4o')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'19', N'ftbR4cxUVX', N'dG1ZMRCbOG', N'625', N'1KiqpYs1oY')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'20', N'OVt5Pvj19m', N'LdOiviVCUY', N'587', N'4NAVn917CK')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'21', N'ifLX4ZeaNO', N'pyuBml1vYA', N'74', N'vyyeGN0BPO')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'22', N'AeRm6b26CD', N'OsyernBqSZ', N'966', N'En5bxCuMy2')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'23', N'2sXZMlaSyh', N'SIwP3rBUfr', N'871', N'pwGwbGJkQt')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'24', N'ldKhpzgzzn', N'HhaClyaJ4y', N'37', N'aWfv9TMyYo')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'25', N'5AL0umITit', N'8oimzpIoOs', N'248', N'JsoFx6P1Tz')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'26', N'ptxBGpOY45', N'FsdaxMTPhC', N'143', N'XWF7m9BSz5')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'27', N'8BupwOeNqq', N'TPeBMO91Pz', N'933', N'uwCZcsLp8r')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'28', N'1UayDluwdH', N'ncqDMNjL69', N'256', N'TXJwskDYeA')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'29', N'ZQA7Ti3WOt', N'cFCCTwxPLH', N'238', N'l6ELWHTC5G')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'30', N'1AA6DoeLmm', N'6qrU8LCTS3', N'57', N'zUZiZf4jiE')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'31', N'fq7lP7k6Tr', N'oY9x1Uol56', N'606', N'i1cZXyVtCl')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'32', N'Sl9osVzigy', N'YWtkaSISww', N'526', N'2zqbfpOO1M')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'33', N'4y6BQSIXMW', N'XYvPu2DjFg', N'192', N'BdCTQM0hki')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'34', N'ENYaIS6kn7', N'GzLgl4am66', N'132', N'dFBlcoVVnw')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'35', N'4a7OUB6XG0', N'OKGOPeYdzs', N'983', N'hGDgpcHiMD')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'36', N'be9UwLgPF4', N'ZQruICLwqL', N'802', N'PkQN3AN7ec')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'37', N'kEhmvNWbbj', N'7NqyPoAKLK', N'691', N'0M9i9EzRG7')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'38', N'dyXQozz44f', N'BSUNsuX7Z2', N'902', N'VenNoMe7sY')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'39', N'YFHSN7FeaF', N'elHbk6n75v', N'311', N'aAtCtkJKUF')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'40', N'GZIj1sTTRj', N'yac2taPhx8', N'938', N'uP3I585ZOK')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'41', N'Sb7RJqSCyK', N'3byO6P5Wh3', N'511', N'LthFe9K2wD')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'42', N'yv84MtE1we', N'minq3txqXW', N'799', N'R2a4bzuesL')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'43', N'vv0sc6KoB8', N'BuBkRaOpee', N'873', N'RtgvqGgBUk')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'44', N'oRp8g3hiPO', N'wC0Sa9YPHU', N'625', N'tl8HGjD6qa')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'45', N'aqmXPdjsVX', N'tycBQe31wn', N'866', N'tOzJivrZ3K')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'46', N'ZuF1CxRscO', N'6o6l2e2tmg', N'490', N'G0SJkC3RpK')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'47', N'1fWy8n4AAp', N'h5y6XuoWHy', N'770', N'oDxjLcHk3q')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'48', N'Gp8qIi8KJI', N'Gdu7XFSoDn', N'833', N'vo0N9Bq6S6')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'49', N'rmkfghHv6g', N'jLxc3gIEUS', N'436', N'i4QK6kDQbO')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'50', N'OdPyv1oBjh', N'j9StFPBKpW', N'805', N'5Ork9Swxvs')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'51', N'1Wu8583aCF', N'OlfA2ME3cO', N'879', N'jhQstwprh8')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'52', N'LClYUlHuoE', N'rjqBw446kL', N'212', N'DkaMGC9BaE')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'53', N'FpPuXFkPS8', N'syAURIOFVl', N'395', N'MeCRFw4lu4')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'54', N'jC5HZ2X8cp', N'uWZSzclR15', N'666', N'woFAcMf3GE')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'55', N'DiBHGUNF1J', N'TMNjMOtlOB', N'815', N'n6ahKrd4eq')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'56', N'JiUqWJru1i', N'kTHSjZ081E', N'510', N'YCBCQVKytH')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'57', N'o7ZhDrlKqo', N'4riVsptgbE', N'386', N'yMVeBweUEJ')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'58', N'h2C5PLohgC', N'Ce5CVJHsPr', N'333', N'O2LAtQKUEa')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'59', N'6gkyKqrfm3', N'Y6oKdELQVR', N'616', N'2xLHJ8RTzW')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'60', N'7yubJ976Le', N'kyJDwltfb0', N'188', N'QdNlXUePVy')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'61', N'X5feSyPINs', N'Dzhsqg3y59', N'62', N'XrGwNStsHr')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'62', N'QVRtqu3hmX', N'zLFW4JsBo8', N'441', N'FcFppLlSPG')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'63', N'g2XiCuqxqN', N'oewcf7OlJJ', N'133', N'RnmmICQ70a')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'64', N'gEARqmcwAj', N'b53MU5ohzF', N'902', N'62k612rTmE')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'65', N'mLdfscNkat', N'Z4ipyfRgUa', N'971', N'THBsPd4J2E')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'66', N'qAsQ17CMl4', N'yip37P6VIn', N'809', N'Et4IEa3c97')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'67', N'9C39vTcJSv', N'bKGdOWVQYz', N'162', N'4tgl1UcKnA')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'68', N'5w2sdkkwA9', N'HRpq8f6RL6', N'940', N'EvsTdOwmMU')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'69', N'1zMZsVfkzn', N'QeL5xwTAgb', N'957', N'AGgoZun110')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'70', N'JuMHEn7La7', N'ow8PdEZJQe', N'469', N'iEaYreonwb')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'71', N'tQk5C4vGeQ', N'j2FPOGt6Jr', N'433', N'4PPE4cM9nP')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'72', N'0JhE4Qa5kU', N'JI1k2vVhmJ', N'358', N'jIAx1W5iZm')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'73', N'Fh8Ngvi5wq', N'vZpEiyKsuW', N'533', N'GEck1GmWff')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'74', N'brXh1R3FHC', N'GRZ4hRb6Qf', N'634', N'2xbM9ODWmc')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'75', N'c6hqyyyNc8', N'3CKwj5QYEZ', N'976', N'N7xfYBUuiN')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'76', N'fJQrZU8DK1', N'kmlXXTrNIU', N'121', N'q42WTo35xq')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'77', N'8L03HwAAQw', N'kQJWnWdU6N', N'996', N'S5esRmp06w')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'78', N'uOPCwGMB8Y', N'cP8NDf8FjG', N'905', N'OB1t9WhGsE')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'79', N'REqe2cqH6P', N'mlyhuStI0q', N'278', N'uawPxuhiW9')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'80', N'CN5TntZ1GM', N'9peynFtdFc', N'47', N'JK5lXpC7Sl')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'81', N'sNrlRTRDxE', N'CB2VZNYjQI', N'138', N'RR4YPhrMQg')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'82', N'Qdph06orZl', N'Tnpa4vZqu5', N'746', N'WNNi82SzOd')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'83', N'jLTyzkDJil', N'qSkzlnkj1Q', N'948', N'vb4ND8j59R')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'84', N'cItScJAUQq', N'pgBSuXj8OU', N'58', N'cna7MAgshn')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'85', N'32w3FNkdXV', N'2jqSqCe92N', N'975', N'9Jzb4YvpnA')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'86', N'ftNZ1dVkT1', N'j0HQyMzNG6', N'321', N'CYBaubAkxV')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'87', N'vG65LOsV1H', N'IuDPYQiN8p', N'649', N'p0RtQ02ATO')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'88', N'Uu7ByRSdRj', N'G77W58jxyK', N'515', N'GwuGl9fvrX')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'89', N'IM8RZufsXc', N'HCC7UOR6hW', N'396', N'wlW1B24sTZ')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'90', N'0QIOCRs7jo', N'bRTVkT9Ynn', N'703', N'5gY5PkCiOn')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'91', N'aetk4fwAeA', N'KzrfqdBvUG', N'665', N'aB65OXIbW0')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'92', N'pWuAEr9UUQ', N'32WGIJgu8l', N'393', N'gGKCvFOM51')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'93', N'eUBIfzDaF0', N'6W0uZhaHmL', N'207', N'BYUqNpHYva')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'94', N'svfnIHuzex', N'PvOKirJJ33', N'510', N'fj6s5vVK6s')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'95', N'av4V3GGGMA', N'r5QxWQKxrD', N'266', N'h7FRV7sdIh')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'96', N'm4dhhDXEQW', N'DOsAYDuskX', N'623', N'FH0SrI93Sr')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'97', N'BazOgLayU0', N'6hcPyadiN8', N'587', N'6mWu3pehEW')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'98', N'KOHwJmZy0y', N'GU3YPJ36za', N'116', N'BVGA2kXIJN')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'99', N'AwW7d3IZ0X', N'LsrSRtCUdE', N'195', N'wo4npolQsr')
GO

INSERT INTO [dbo].[loai_phong_ban] ([id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'100', N'mUlTHEU9lD', N'95j33OI4Ii', N'635', N'eBZk4oZPxb')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for loai_sp
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[loai_sp]') AND type IN ('U'))
	DROP TABLE [dbo].[loai_sp]
GO

CREATE TABLE [dbo].[loai_sp] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [ma] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ten] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[loai_sp] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of loai_sp
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[loai_sp] ON
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'1', N'JFHJcuQcBQ', N'WL9axcFx3r')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'2', N'EoVyIHJmdG', N'DmXps8FpjL')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'3', N'2hY9ze21E8', N'rDBftwJoO3')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'4', N'hCqQoZeGCd', N'Kw3IIIJIfE')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'5', N'oGeW0QqYPv', N'7pF7Dw6mJ2')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'6', N'IKNKnLpDG6', N'pX17Pb85tn')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'7', N'7eXpX7YrHP', N'7XjBRdSvPQ')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'8', N'UdS7xmVR2z', N'5ZNe9AKLIJ')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'9', N'i2Rc8OMV7U', N'SJ6R4P7u2s')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'10', N'2gpLPZ3hp0', N'0D9LZ5U92E')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'11', N'FjjLR9Qo4x', N'WknEQjUmZ3')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'12', N'2HlRV5LIfg', N'3IRJa5gqtX')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'13', N'L04ZWcWKOt', N'W5kJV2vYfY')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'14', N'jDDoIC1Hoc', N'03nOjhVKnK')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'15', N'QgXGiZEcTv', N'fMKWrhVlxU')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'16', N'1DxWHPlWE3', N'EBTRGTKs3F')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'17', N'3hhRDHmKK4', N'XeiQnEs2Yb')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'18', N'6zHfwyOxw3', N'b0xJsHdwaG')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'19', N'dsUoTFCkyc', N'AVDtmwBpUx')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'20', N'Sckj8ZaksF', N'gYNpiaaWBz')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'21', N'0vt8E7Vm8e', N'AZXnHswSLu')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'22', N'H4uKWXGdXw', N'UgJxlIqIl5')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'23', N'HYmmkYLimr', N'CQRL4VJu05')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'24', N'RT5oXu2XjG', N'bhcvSYcKcX')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'25', N'VDQ1gHS1y6', N'u3AJKnZNs8')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'26', N'dhcexremlG', N'LKRlVIEfnf')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'27', N'CbuS9mzaDD', N'23uxBjQ62A')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'28', N'OXGax1Yzpp', N'UGHDh1ejQj')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'29', N'HU2r8zugOl', N'ZjL73P4S5A')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'30', N'8hMeIp0x1i', N'lnjRYVIdiS')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'31', N'IR7Gfkff02', N'eTNG6OiYgx')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'32', N'NQEiW1aUeB', N'PmN9tQh8dT')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'33', N'PF0QWgKPvS', N'I0JMoSYTrP')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'34', N'cHhQ0Renjv', N'bHkxdPRUmu')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'35', N'lwdxjIheLV', N'AA8lIqSLAp')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'36', N'91N9kVWcXe', N'nZzImgqcRk')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'37', N'85SWdnVq3q', N'QTvr44aADh')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'38', N'5XR1P7vZ7R', N'tycgB03tiM')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'39', N'LzyWDkYZ61', N'XEcQQPUwqM')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'40', N'6wrfXsLyCW', N'nr8YIguev2')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'41', N'ZUIP3zwMau', N'cYmCuDrWLt')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'42', N'6Jr149TzU3', N'yYnWGru4xx')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'43', N'cVEU9EbgZC', N'tUZx4EsW3O')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'44', N'CqRVfZlVrz', N'qIVWDCYpFM')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'45', N'bwIU8sDFUq', N'wC3NGrMJZ2')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'46', N'46F8LJ54lS', N'X0vYVeoTYf')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'47', N'SErVjsvKq4', N'QFoR8u1fE2')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'48', N'UXfs41gQmg', N'8JdQyCtSp3')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'49', N'wJITcTWpta', N'MOh71861AN')
GO

INSERT INTO [dbo].[loai_sp] ([id], [ma], [ten]) VALUES (N'50', N'ryl14CDqRV', N'DFm9gYbDcj')
GO

SET IDENTITY_INSERT [dbo].[loai_sp] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for nha
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[nha]') AND type IN ('U'))
	DROP TABLE [dbo].[nha]
GO

CREATE TABLE [dbo].[nha] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [dia_chi] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [loai_nha] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [gia_tien] decimal(18,2)  NULL,
  [chu_nha_id] int  NULL
)
GO

ALTER TABLE [dbo].[nha] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of nha
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[nha] ON
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'1', N'iDkxl43ieS', N'F3VsxkHUnS', N'83.38', N'3')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'2', N'IVmILcMrcD', N'XoHaVsTCRF', N'684.16', N'3')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'3', N'AdojbvfyeE', N'hIYTsoJOLG', N'405.29', N'3')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'4', N'PQchRKh0dm', N'3sMYrJ5SVQ', N'28.79', N'3')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'5', N'eTHQmjvYzX', N'p52c4qKiak', N'316.16', N'3')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'6', N'BTH4tYmHe6', N'2jE0JDBAm2', N'138.36', N'3')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'7', N'PHm5vz6B2V', N'uMlZnTAEVo', N'313.46', N'3')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'8', N'b8NkC1R2Gt', N'rTckkG7AVA', N'60.94', N'3')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'9', N'4UGwi0bPbm', N'cfbQwwU1Mo', N'302.44', N'3')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'10', N'Te6TO74nOP', N'OZdGxY2o6w', N'509.68', N'3')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'11', N'NbXaQLWoGL', N'O2KDHrCAAR', N'414.75', N'3')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'12', N'7UX49FOhtQ', N'kcXh5OoMdP', N'434.13', N'3')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'13', N'TqSJTY2JuU', N'REBwo4lPPD', N'94.89', N'1')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'14', N'350c4Uhc2a', N'WO58HnVvIV', N'259.41', N'1')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'15', N'xZljjaH27V', N'WfZHYROROM', N'434.04', N'1')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'16', N'tog9fTG1k5', N'M3V0IZvic9', N'377.79', N'1')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'17', N'TF26rG5cFP', N'1YWkawulHt', N'631.21', N'1')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'18', N'K0P4iRJqth', N'5T1geF9uz7', N'224.92', N'1')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'19', N'0YRmzsO6Rz', N'dFjsQtP33o', N'533.07', N'1')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'20', N'W2oDXuqXMe', N'XHwi3ckiVF', N'994.01', N'1')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'21', N'4qjmDWx6qp', N'nNj7pPcmdy', N'894.98', N'1')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'22', N'zWW1LXEPPg', N'ZyFfJkfJ3m', N'655.10', N'1')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'23', N'3LBchNtPTs', N'4ngzHR4JL7', N'335.58', N'1')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'24', N'UO8cUODdXu', N'p7r4tl4Xzg', N'452.74', N'1')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'25', N'RHsCeo1nWZ', N'K4RNwhG8Dx', N'408.13', N'1')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'26', N'c4IwPmjdbZ', N'edSs8xjHyH', N'182.15', N'8')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'27', N'LGPzwfZ0fp', N'aOtX4EGtjH', N'548.64', N'8')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'28', N'l9V8E49qMa', N'UhuF6480sn', N'301.86', N'8')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'29', N'eeOilHp4Ck', N'xXv1ICjeP5', N'463.54', N'8')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'30', N'6a2pViu4If', N'bpwaV1rihH', N'510.35', N'8')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'31', N'zitUelFGfW', N'qx1CtQ5dG8', N'438.74', N'8')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'32', N'F78GmQFFMe', N'liXGoqBHek', N'785.86', N'8')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'33', N'siF0YI61xs', N'941qBgxtm0', N'255.34', N'8')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'34', N'K1NbZkbL5x', N'IVwwPBjFit', N'863.79', N'8')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'35', N'OtOu7BwLqO', N'Qu5qgqpfg7', N'379.87', N'4')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'36', N'TGs6wdCTY4', N'wC0stKVLl3', N'131.32', N'8')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'37', N'ntLwSQ9HtR', N'aHpqEEbuUS', N'218.71', N'8')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'38', N'TBLlnjpSrs', N'iFVOSr0Ncd', N'557.57', N'8')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'39', N'1KfgUxSqoX', N'S39JRwDxQY', N'677.08', N'8')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'40', N'lXjTJ6kC0c', N'29weuqMlhI', N'882.51', N'8')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'41', N'3bMLjo63aM', N'NzHS9O2jxt', N'907.36', N'8')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'42', N't60s0y3YIW', N'A0L8VnLTmN', N'703.36', N'8')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'43', N'ulCkeCbpSH', N'azJMV1R2kD', N'531.03', N'8')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'44', N'K4ylNAEuQc', N'6Afo47ZsJv', N'398.35', N'8')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'45', N'DpXhGZZ2sC', N'dk3CEVzMjN', N'183.06', N'8')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'46', N'XmtBTGNESV', N'I0eDhjwtFK', N'3.23', N'8')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'47', N'Dvgw1Aez5z', N'hV5NnstRvZ', N'40.61', N'8')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'48', N'hxloLI7G24', N'SvQoICvZmO', N'109.74', N'8')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'49', N'RaDtwnok67', N'rYW4iND05K', N'911.63', N'8')
GO

INSERT INTO [dbo].[nha] ([id], [dia_chi], [loai_nha], [gia_tien], [chu_nha_id]) VALUES (N'50', N'2ML1A0PpXP', N'zQbmhDTf2x', N'803.38', N'8')
GO

SET IDENTITY_INSERT [dbo].[nha] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for nhan_vien
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[nhan_vien]') AND type IN ('U'))
	DROP TABLE [dbo].[nhan_vien]
GO

CREATE TABLE [dbo].[nhan_vien] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [ma] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ten] nvarchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ten_dem] nvarchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ho] nvarchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [gioi_tinh] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [dia_chi] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [sdt] varchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [mat_khau] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [id_cv] int  NULL,
  [trang_thai] int  NULL
)
GO

ALTER TABLE [dbo].[nhan_vien] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of nhan_vien
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[nhan_vien] ON
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'1', N'yeZcptoKnC', N'Gtp9dol6Sy', N'ldtJlCtzBA', N'B6N9Dby4SK', N'X5MpYDhPNE', N'hJ1h5iWazk', N'bfjQhq2wLO', N'IjZON9Eoz5', N'3', N'1')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'2', N'y9K9ZSl9Vj', N'8fMioYucwn', N'a45UWY6Ibl', N'KQxHcOuAe5', N'rEmNDEgmQb', N'qnd8DiX5lF', N'4hTslKrFeZ', N'aiPPqRMC1e', N'3', N'1')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'3', N'XasjdjcROl', N'iCfjP11t3p', N'hHNgVUVS3o', N'lmJRCC0oqK', N'lPmH0yDvoR', N'eXmwVbJ430', N'WN9WLDE44W', N'kmJ1GiKgMC', N'3', N'1')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'4', N'RK5a8PVRE3', N'kXNs8wq0MU', N'mFaLfy5VFc', N'FsyzqlL6qf', N'iFaTZdf58F', N'IxZTgnt0ko', N'h7aZInBs5F', N'j3eidFXJOv', N'3', N'1')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'5', N'iON4aDM9Vj', N'vR780ePo5l', N'8dID9vT80n', N'pKHOwb02Kl', N'VuvnUAdPlO', N'uUvwg75Ytm', N'lb5CSNMLB7', N'kbzQIywMqQ', N'3', N'1')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'6', N'93dOmsF4sj', N'pITzqibCxN', N'0WxqnaA7ao', N'SvLuIgjmDE', N'6D2oPmlK50', N'xN2gVPF59n', N'326x3QEbPp', N'jJS4SzZNkv', N'3', N'1')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'7', N'yFbaLcf2qW', N'FulTkmNEdC', N'R7G5zSTso9', N'NM9G5Q7gcq', N'HIUhqm7s6C', N'Ei75ftwbkT', N'Y4eNFzwifF', N'mJbx7WGIbC', N'3', N'1')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'8', N'FhYyNTJUgl', N'1lLef9JRco', N'rq3uwXI4iC', N'MEVrkAQfLp', N'Js5KXNflXR', N'dcCIQPQ4a9', N'BLyZz5D9lF', N'dMuPQgounY', N'3', N'1')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'9', N'Awho0slkMN', N'fZeczw3yfT', N'BO6etjgSSl', N'B93XD7Adh6', N'6vfiTwCQCZ', N'NQSXN14RzF', N'6A9LU6sx8X', N'B7WKPosw0D', N'3', N'1')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'10', N'0ykSqXhbZZ', N'9hV3nSIjE5', N'AuuNwmIJJd', N'fEq7xBNmXA', N'Xm0sTba71E', N'B7kfceER5B', N'mIA9xLPVEp', N'BrwgH7xEdc', N'3', N'1')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'11', N'HwxIapwUN3', N'ogdcUGhPcx', N'qSqUFzoHBP', N'5QuRdbOqV9', N'sZLyeNXcyr', N'WKPcL5IxpS', N'NOnXVAxjHW', N'IzYfPKSZTI', N'3', N'1')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'12', N'4iR9oWz28Z', N'zMGBLDjjYM', N'a7cKn2GiOV', N'qDmfAURNad', N'P6j4BQFZA5', N'emWlL1UaB5', N'Pk3V9UNysr', N'WZ6G0xfbrK', N'3', N'1')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'13', N'XRJhY83n6g', N'KB0RC0oA9n', N'MaDcEsqDYk', N'FQTNvguoWn', N'ONkH2cI4o1', N'6W9zCh6AYk', N'5pKlnA6cqB', N'RTXbZzgh4X', N'3', N'1')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'14', N'TJHQJJMsyq', N'DoZ0kgmibD', N'ZEhCtUTgT7', N'momHZ3HM1n', N'XBj8r0SM1x', N'EvZejumQwT', N'BmC2MllJrM', N'hytSz2MC5J', N'3', N'1')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'15', N'dQ1cIJopno', N'1kDcmXwwpL', N'H0X0XorgH2', N'wJeMps8TRL', N'Bg4dtICHna', N'jNKj6eodR1', N'NFY5wtTJbj', N'AtmHt4QSbD', N'1', N'1')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'16', N'8fwqGko1pu', N'dmGBjOQU7f', N'pqqYJgug8i', N'ZxLllLvmZs', N'6cqIwjK3tR', N'vKYdIgKSIj', N'8Rpm6FcHdO', N'DvZtJQ5nUT', N'1', N'1')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'17', N'LNaviRFTEx', N'cFipL4ZaRA', N'6aKynGIQ2M', N'40S8LzlruC', N'pPCzjPRQ1Y', N'bBkDVvDSzt', N'VMbn47icWY', N'XD1h6hGZD6', N'1', N'1')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'18', N'OkXw5wvxeY', N'GfW7zx0Ynt', N'wQeFHB9cj7', N'Yob5LbgW30', N'kaScxzRKIL', N'xfiL4ZZMOX', N'gyDRi9tfvD', N'kX88pR3PEg', N'1', N'1')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'19', N'n5aPqD7hIp', N'ovaL5L4wUe', N'Zvf0jEbwSG', N'r0VnUDNV6x', N'tx0M7hZHpQ', N'HQDXZr4TVn', N'dMiH8VTIy0', N'7dYTrWTgZb', N'1', N'1')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'20', N'dd5zHVprlh', N'8mR6Txge8P', N'XqFJTv357D', N'l845Zslcnn', N'FhEyWv8xiO', N'z5ntACSC8F', N'Xb8WvJq5V3', N'5IcuXtsR5e', N'1', N'1')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'21', N'fBy6D9JLU1', N'h5VbTubcaI', N'P8yENaUpOC', N'2tLJ2rVWQG', N'i6vAG1IRSj', N'fqD2Ezb2qu', N'mNCAOht2Cg', N'oRXdKR5cxq', N'1', N'1')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'22', N'6UUMKtujqb', N'ZsGX4064iQ', N'0NmJIk6G22', N'x8co38HdVs', N'Db9C2aaLqq', N'XdSg637GPv', N'qvqH0RFIu8', N'kqUsXp1PC6', N'1', N'1')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'23', N'ePlEdECvXF', N'fhv6OrbILs', N'AEagf0HghG', N'yso5jcdF0S', N'79qJMHLdn7', N'l0xCFIQhgV', N'URPIpqldEA', N'OPlIEXoGPE', N'4', N'0')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'24', N'NNcFqxZTOg', N'oIOmOWaXg0', N'IusTNIRzsN', N'uLu47Aszkf', N'wHX6WbnaA6', N'nWCMwbqPQM', N'0ez54L6p2O', N'UpozqYOTTR', N'4', N'0')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'25', N'Og2ayShHSL', N'2BZ6NuGx0c', N'4hUWbhfXyx', N'4lM4aLc0zi', N'QsOEMAumWK', N'G9YN7PBeWg', N'duNjTQ0kZ0', N'sl7MG0af44', N'4', N'0')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'26', N'yYrn8iObsN', N'5GtBJeUon8', N'nmxyZuj4NZ', N'SXPLy4yUnu', N'TkEXjavsKN', N'mWyG5hp6bN', N'vwbOrtGXph', N'1roLN09cL5', N'4', N'0')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'27', N'VuQ2hVHUEV', N'qnhSfmYAdE', N'9YtJ5NNmSs', N'pNYF0byKt9', N'0aXVOOYFpR', N'VUv85Pskov', N'52WVQkc5zi', N'7DdZGDZpmx', N'4', N'0')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'28', N'bkDZEPNReI', N'85D3kmMrd7', N'lLGGbAoxX5', N'k0mSr7e2bv', N'GOSgpwOuhi', N'2AhjSE3s9s', N'PULskwg0c7', N'LQruui6k9O', N'4', N'0')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'29', N'vUAtJS3RbA', N'F8dUchRWPc', N'LNEuFLxu9x', N'g0UXFwSaoD', N'o401868ij3', N'zNNcOpkGYl', N'6Kxkwbwtch', N'ja8wipW5UA', N'4', N'0')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'30', N'5PcWhQKpXK', N'lrAJ5NZy1u', N'tWcPjyHwjV', N'uL6umCIjm6', N'IUyrIUwSfF', N'4NC8mvoQWQ', N'kASHk2y68s', N'Uk2T5Xc62m', N'4', N'0')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'31', N'CcV1LlFoRp', N'vsoraQiOuE', N'pjlWjBarsk', N'2gXwpJnoSa', N'FO6uS3GV6f', N'LAO69Zrxki', N'miIkOFVTlh', N'Ms0muExjMh', N'4', N'0')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'32', N'auNpHgdxyr', N'83C1LuHvQk', N'pM7qKXPCnV', N'6jDGXFSe6r', N'1v52Rdc5An', N'yOebCYzZXV', N'4pMEOuPc3K', N'AzskI51Pkn', N'4', N'0')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'33', N'QKjVNjjs1r', N'PttDwsoZge', N'lolZUrCwua', N'dvo8YalHkT', N'innMIBLPpf', N'yavgd6U3Ss', N'Bi8bM2g4Du', N'YwqfLJk1Vk', N'4', N'0')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'34', N'YY251yuM3E', N'RDG7LZNBwy', N'ITiEz0CXRI', N'ln15Cx1RWL', N'zZM2gEMJf3', N'UWkDbnRqUk', N'Dka9qvawLl', N'XnLw4VCmpd', N'4', N'0')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'35', N'HfzHh2Jiwx', N'ibJCKCw2ye', N'6SBTPmmbGd', N'tGxZvP9Oip', N'xlPRoVV9MR', N'AzitTkQwVB', N'z1NGq3xMsw', N'udezZoqre6', N'4', N'0')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'36', N'GeuZbDpDDm', N't7eLl62RzG', N'jI0AhF866C', N'dN0na6XSxC', N'IBPC30Jj3Q', N'ZujrjLZQfr', N'4D1Rt9iKBe', N'I3Z4fAJGSd', N'8', N'1')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'37', N'G15vBpzlxV', N'NWO0w9YerF', N'nmKC4hyuUM', N'6Aby6aRcpK', N'NoZKLHpruN', N'36jiS5X5Vj', N'GLsGCKkSM8', N'2Horq2NAQK', N'8', N'1')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'38', N'UraNO89sqs', N'7e2saTmQuA', N'CpKJ4KjtJO', N'FVAIXVe0pC', N'DdZ2pVhzWt', N'IjwMrk6cNU', N'POYyixngqg', N'YkqetTqEkK', N'8', N'1')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'39', N'IEGJUE6GrM', N't2rIqiW0nN', N'N96YPwPvMJ', N'iw2LXOZKIQ', N'JvcxBVcBwh', N'FNwoxw5P6m', N'fLv1rGG6tL', N'apCKQk3NJx', N'8', N'1')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'40', N'OLrdP3gMJl', N'L9ArOhi4u7', N'Q4FmjQIzHT', N'ygVLkRFrC2', N'E7HsZwZMTc', N'PM8sVnUJ0j', N'wbLdvkplJi', N'We1rat1ZQA', N'8', N'1')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'41', N'7WtkNHCJpr', N'7KtsLf77fF', N'vcXoxuQ4MT', N'9VLVTfcZVP', N'M8EmpzGYJy', N'SDjaTXrWfQ', N'p2mKEdKefH', N'choqi7aTgT', N'8', N'1')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'42', N'yZS9mzT6yX', N'q7Pn9mdSYE', N'W9VA8IF7T6', N'5h4tHYRjXX', N'xSIgeyQjp7', N'HWEksGfOpV', N'jBX4juO1xP', N'zYEzywuLP5', N'8', N'1')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'43', N'2BhtAqAOj6', N'oBdQYM1tPO', N'Gc2eKUGTrt', N'R7cZYa02Zx', N'CkJJd9N5XP', N't9wtX1xS5N', N'v2OFHhcTH1', N'pGg576H85o', N'8', N'1')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'44', N'm4tKwlLcRV', N'CRcMtEGggP', N'O6w6hZtx6o', N'GU6F5qQmE0', N'THHpuKbcbV', N'epaDRrapHo', N'hNZSxkBwj4', N'58sC0DYSDx', N'8', N'1')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'45', N'WkqqTqqJED', N'O6SzXaNMJ9', N'gy3tn6jVNY', N'rEOfLTOw56', N'f2J3XSUOx8', N'fQOsyaMIvc', N'0oow1gtG2H', N'kjePHSzwi9', N'8', N'1')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'46', N'hlRjA2BQWM', N'XF2mdiM7fR', N'Xja1KBfTKH', N'GoYwqhKL11', N'XHvd7m1WGx', N'ONK57wqMOF', N'U4VjWTIgkS', N'cfYxNpO7t5', N'8', N'1')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'47', N'o569ufqzLC', N'Tv8YYxD4jW', N'f4IW01VnRo', N'rdJizhGWn2', N'ZiAhJHhPJr', N'HUXrxtvHgz', N'wVOY7x9g5A', N'NOMLlaotFQ', N'8', N'1')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'48', N'd315Ywctp4', N'QinDyuzAOo', N'otlqiDqRM8', N'Ejfnc25ino', N'8m1VY0g0UL', N'9iSG4yvuEr', N'qKWfryZTvd', N'mIyaz4BLO7', N'8', N'1')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'49', N'iyHiX6oSMo', N'PqCt3zOb2x', N'FFGUcao6yo', N'jfslDH20Jb', N'JYeI1lTcJb', N'r9S8SZTtbe', N'e0G2dNDjH8', N'7e5e5zTbIz', N'8', N'1')
GO

INSERT INTO [dbo].[nhan_vien] ([id], [ma], [ten], [ten_dem], [ho], [gioi_tinh], [dia_chi], [sdt], [mat_khau], [id_cv], [trang_thai]) VALUES (N'50', N'E5omIEExZx', N'jqYKJyJgZx', N'GJ0oLfi53u', N'LLsKLSNznT', N'QaD1N1qdfM', N'rvHdQXdtSM', N'4N9ebsibOE', N'rKigOvJkAY', N'8', N'1')
GO

SET IDENTITY_INSERT [dbo].[nhan_vien] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for phieu_giam_gia
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[phieu_giam_gia]') AND type IN ('U'))
	DROP TABLE [dbo].[phieu_giam_gia]
GO

CREATE TABLE [dbo].[phieu_giam_gia] (
  [id] int  NOT NULL,
  [loai_phieu_id] int  NULL,
  [ma] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ten] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [so_luong] int  NULL,
  [loai_giam] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [dieu_kieu_toi_thieu] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [gia_tri_toi_da] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[phieu_giam_gia] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of phieu_giam_gia
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'1', N'1', N'uhhXqSKCMd', N'cizL6Lhbjr', N'872', N'6txf8EIUjN', N'KyGHUMONXx', N'NmzjrdngRS')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'2', N'1', N'CUo59cCDa3', N'A3Gelo6i21', N'155', N'PP9wXl7g26', N'vNH1QOpLgk', N'vLh3asy836')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'3', N'1', N'WxffyJ0cE9', N'G5CJJO3i8s', N'440', N'DZQDFSgnSu', N'TtMcKEBKai', N'DOsiHfptDR')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'4', N'1', N'WMXdnLJ3GM', N'IRymi0pixl', N'529', N'XKwL4t527k', N'GxCw0NhwPD', N'JyC6VDCHNk')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'5', N'1', N'QbTTTydHtO', N'wc5ozgSflw', N'91', N'Qjge5tVgtU', N'yoBqqDxkiq', N'NGZIIl8Vg5')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'6', N'1', N'jvWVgw9tGR', N'AYc0u4aspe', N'852', N'Pjj59q0TFE', N'OJKXSMLFPD', N'YH9J5mTunu')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'7', N'1', N'CDVy6TpGjI', N'JXvwuUKF70', N'171', N'pmgRGB6PRr', N'KrwUeP2orM', N'LQ1Rt1kZka')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'8', N'1', N'66Sio93Evv', N'mAgjcDuJSM', N'332', N'VYyFlIimrT', N'cqQENJzZ1I', N'8I1JQaMHBe')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'9', N'1', N'it6ei7tLk3', N'BR5TEaI3hJ', N'552', N'IDzLetwyzU', N'g6hOwCpNFL', N'hixUPUyuyh')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'10', N'1', N'SAqBbq6gFb', N'7eCRgE9BSW', N'218', N'K59DGHwtXv', N'ROo6FHNSrI', N'a2LhlS2tps')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'11', N'1', N'nFlw2cLlmS', N'WNC24wYLl1', N'256', N'UBAQD3k0N7', N'OLIb7uZcE7', N'BdBqygbu0K')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'12', N'1', N'rfDhskbzXi', N'A8PSQsafcp', N'909', N'nHqCTyZUgC', N'M40IWxoM3w', N'LHPBuFmIJV')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'13', N'1', N'akD2B5EZ3C', N'eOdI0hrbRT', N'441', N'LAJyRKf702', N'AoMFEeV9fd', N'N34VbK2nLs')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'14', N'1', N'mHtpdlTpAL', N'YqIUnKEtla', N'56', N'u9t9UTmdRD', N'9zXrx5IXIc', N'csLMKtKyf0')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'15', N'8', N'UPZrgiGvFm', N'CnSrFg7gKh', N'747', N'zoJSr0k45E', N'B6CVwkryrE', N'XvjyCfOhq9')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'16', N'8', N'4whCbK5zWb', N'J9xnln0IaT', N'603', N'Igzt7RKIIG', N'PyGuyvKLgN', N'dMh79THt8t')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'17', N'8', N'bOhKg9YL0f', N'zNpZqjiOGP', N'873', N'ucgxd4oliv', N'xPbtMFiwuO', N'bTCmKR2LDj')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'18', N'8', N'I7u3jb16KB', N'ZsSbnDgS1J', N'612', N'MUX5HOLcTH', N'yjewcS5pwC', N'HQ4QtVih5d')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'19', N'8', N'5SrUeF42ZQ', N'Ytq1jKTNDG', N'603', N'PkSSZNak5z', N'YV8Ar6uOks', N'lcjUOw0sMw')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'20', N'8', N'O3trIgpoHN', N'o4CC6apACt', N'555', N'etOELHzIPZ', N'cMJIbzjqk2', N's6piA1Kb9e')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'21', N'8', N'Kb9E5XXEsx', N'CWkwRXz12r', N'16', N'bV9ZHUUQXh', N'Me2OeC1QqT', N'wJ8u7jBdh2')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'22', N'8', N'D1oMYx6Rvi', N'jVHfc9U49p', N'558', N'WpqU4fuvXr', N'mk2DrNajTn', N'eoVLt5rUpW')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'23', N'8', N'Vm9Fr3fqrv', N'HzGmCNNlzb', N'776', N'yeifIBRzPC', N'7mKUxNabOe', N'RlnptT8hFS')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'24', N'8', N'Upjeg76kNj', N'M5lzwvSGpd', N'87', N'CnwcV4lg9Z', N'ZdowMwIe3Z', N'lcnyMNFLLy')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'25', N'8', N'MRQ94GtjaE', N'3rfOUStsgi', N'283', N'JhZawOFewA', N'mdqQsSa9PG', N'YpMYen2zBB')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'26', N'8', N'zFZJRqVTCM', N'H0HhfpDEvW', N'71', N'QhYbtjbQVI', N'CmHqIPLiG1', N'K1fWlSuS83')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'27', N'8', N'zfu83QhHSF', N'NkMA6tVcRV', N'884', N'Bq4BWAbLPB', N'Ngx6W86kwV', N'bqQWHLRbVM')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'28', N'8', N'OPwPLkkClA', N'GhQIE4QTLe', N'431', N'yQuT7bLGyT', N'M0OZuMlM0q', N'KJoMOtpbY6')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'29', N'8', N'DrfpvZy0vC', N'6SSZqNx2Oh', N'498', N'E6hxENPqJe', N'hmCVkBtkzl', N'PYcc3weSbd')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'30', N'8', N'gvpBtVUZfp', N'OElrmU5St8', N'798', N'blkWJ1HAEy', N'lJSwDK71n2', N'R7MbcjwlPG')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'31', N'8', N'zDyyHmUVnd', N'icv1FpO4bA', N'669', N'KqGcNCD7Xt', N'sX6uWx3ATl', N'oXz3jWS4UQ')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'32', N'8', N'N281cmBAKI', N'U2qoM9DwrP', N'846', N'rNRYvfuiYr', N'OkzQx3wP1W', N'7tPzWpga1S')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'33', N'8', N'BZ8amfpzWa', N'gRrwT1ui57', N'445', N'haDt9GC8BB', N'vAzNbNu7cL', N'gLMyQacnwb')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'34', N'8', N'hwH9NVexDF', N'bPGbX6URhF', N'491', N'aSijpvaJjU', N'nbevve9CSq', N'imAVFCJuLB')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'35', N'8', N'PHyVwwb9dp', N'BXGDNvbSCY', N'281', N'lYEMPkcRpf', N'pOKXwrqdZB', N'5EOIt5ACQt')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'36', N'46', N'mqvNFSRnhz', N'2W72Z4f5pG', N'944', N'DjmYe6g11U', N'UuxbdS4oir', N'aggPNpcsqf')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'37', N'9', N'F5TlTmTeqM', N'USErhskkld', N'900', N'ofOhVluIZB', N'n7jsnefBwR', N'5xFALzsu3P')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'38', N'9', N'8rU4fFHaPd', N'X7RTZcKrIw', N'619', N'7f3lN7lYI6', N'OlvcIHRYQ8', N'2IlpDX1Peg')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'39', N'9', N'i8fe7B4YjI', N'cA1FK0W9f4', N'107', N'sHwSMxY7KS', N'wLxZmjY9fk', N'06xEmzRqzN')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'40', N'9', N'FhwJzugD5s', N'uuCXGewIaH', N'651', N'qv9XwhFNy3', N'G43mxqWS1Q', N'ImqNKMdRRh')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'41', N'9', N'IGUkC61ywo', N'rupwDDiawu', N'52', N'm2jI9evkP2', N'bnrpIARAmD', N'5vkAMoTQRs')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'42', N'9', N'eaZcjfdHxq', N'2CdML6wxH7', N'857', N'7EwEKyMiIo', N'Hw5C5VkQa8', N'zdoPmhg9gs')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'43', N'9', N'pyQkScxkdV', N'NyaXLHeNDY', N'272', N'eDhDIEWmRW', N'O1s5bSDtla', N'0fp4vWe9xu')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'44', N'9', N'MJNlGKx9ou', N'jpF8C7La6v', N'976', N'm0wyR1AX06', N'41lACmw0Wg', N'5meuu8Gma6')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'45', N'9', N'tAtYniP2gG', N'H2z0Zn7Nlg', N'242', N'Y29xu2KKKr', N'Fze62LK7Qn', N'UTrQoExVZk')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'46', N'9', N'eTdFkqBzlQ', N'1akVu9GuLX', N'160', N'oOaq4zIFul', N'LwBMAZnuEo', N'ExCQF7S7xl')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'47', N'9', N'Th0yHPh9jv', N'ePu7pZIHOz', N'446', N'gy7kmoQhP7', N'2NmPHIprA6', N'PjHu5T0EAD')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'48', N'9', N'AH2lkFnjrj', N'wNRW7sMkuz', N'724', N'VadmW9m4cG', N'19MprQovFM', N'EKSgSm4bYm')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'49', N'9', N'8X1tbn4uYo', N'vFVvByop7h', N'951', N'bOKmHltBhi', N'LnsVmMPSQr', N'7cEphHGo32')
GO

INSERT INTO [dbo].[phieu_giam_gia] ([id], [loai_phieu_id], [ma], [ten], [so_luong], [loai_giam], [dieu_kieu_toi_thieu], [gia_tri_toi_da]) VALUES (N'50', N'9', N'XNjdVXvpn6', N'HgvziqUh7U', N'486', N'JqCSrVOstx', N'jkjPiEK6Dv', N'uYesLulr6n')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for phong_ban
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[phong_ban]') AND type IN ('U'))
	DROP TABLE [dbo].[phong_ban]
GO

CREATE TABLE [dbo].[phong_ban] (
  [id] int  NOT NULL,
  [loai_phong_ban_id] int  NULL,
  [ma] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ten] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [so_luong] int  NULL,
  [ghi_chu] nvarchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[phong_ban] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of phong_ban
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'100', N'34', N'3tyj9P73RJ', N'NXcz14yvlB', N'146', N'PepH5YmsYG')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'99', N'63', N'RlFMiu3yMT', N'og3V3YtMPI', N'977', N'sS04Eblnn0')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'98', N'57', N'wR4K743cqV', N'PWUsegvkl3', N'600', N'pfCbGMX7wt')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'97', N'87', N'wsuUfGfQaq', N'AjjoTrIMhC', N'487', N'FCCXY8BqY2')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'96', N'10', N'K4ZfhEVErk', N'QAicHWaKGQ', N'69', N'uLXBkCn89J')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'95', N'20', N'gikYv9r1iY', N'nFAzi4b5OI', N'219', N'Re2HZXIfaQ')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'94', N'74', N'fcnMxUcTEk', N'ORGkFzB6ci', N'651', N'cUoRZd9ujq')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'93', N'31', N'xD8x4Q9xdz', N'RQEw7cHBXE', N'735', N'aTHKWH1GoD')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'92', N'60', N'ztznSckJhE', N'DAFUVZ8Z2O', N'94', N'pB0onlvxiZ')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'91', N'39', N'Ck9ajct2OM', N'CmqMUEJXc1', N'766', N'k9JwIW4re8')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'90', N'36', N'X9FPf4cAtA', N'3Jzdk998Lk', N'775', N'mGY9KD1gAv')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'89', N'62', N'al4SleyZtO', N'a3stsrN4sv', N'619', N'bOeTX3pvb3')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'88', N'5', N'mxRHRwhPZm', N'YVG1tL983n', N'682', N'KMR41dH0hQ')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'87', N'81', N'umg2KNzSKo', N'PtfIcAAw9m', N'774', N'Cp8hR8wsfx')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'86', N'84', N'BSV0SZ3Ksf', N'8i00J91oNE', N'380', N'0Bd6wsw6bM')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'85', N'78', N'Wz95c13XIJ', N'qmXvSnPb3Z', N'306', N'SuMv33p6Ej')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'84', N'12', N'bi8OoPR2eT', N'TgETfdfuLB', N'738', N'3tmakbewN7')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'83', N'46', N'B2my01FecI', N'8CEj6ZrwGy', N'815', N'9TyZoSMJmg')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'82', N'83', N'8DIWziwBHi', N'qb8XyTkHyv', N'892', N'SCllPEqiJZ')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'81', N'43', N'jlq215pq2A', N'df8Xc66C11', N'45', N'hygs2OX331')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'80', N'69', N'xqRmQgZ5l4', N'O6aZt5rMJk', N'446', N'Yn2r2bpVeq')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'79', N'63', N'ZSyJd06UFt', N'1pHyp6N1XL', N'685', N'kWgYUl054D')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'78', N'32', N'k3ztIMSKI3', N'WJBx31QyVn', N'376', N'5YcP1lDWgc')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'77', N'90', N'o3y51CzFlv', N'w8X0S6ldKG', N'868', N'YFGJxHLMfG')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'76', N'17', N'zlSj9ccKoN', N'nIT1jm70S5', N'894', N'9CKB0j2vhb')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'75', N'81', N'2uQkyhjwhs', N'uBVMxNN7mB', N'594', N'gi0MxaqFjl')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'74', N'84', N'NbcUzxOHQO', N'n74oYM2HN7', N'519', N't5VuOP6PmX')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'73', N'13', N'EZbP3T31pZ', N'nZkGm79wDp', N'886', N'to1Eqs3Lnm')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'72', N'64', N'NqkRySBNMp', N'Cf0K5UL9uj', N'886', N'XjjLU4vngH')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'71', N'44', N'WOJNnNw1no', N'wcFwxczNvU', N'323', N'diRkhevJ3D')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'70', N'83', N'ZD7cyKmB6F', N'plsCaaEsyq', N'779', N'3QXGMImEGu')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'69', N'40', N'gd1SYtWT87', N'tFnz9727pM', N'924', N'SoqhIUI0Uz')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'68', N'99', N'JNdyZ2nDKq', N'rufmHzbwUb', N'15', N'ZVum225zCq')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'67', N'98', N'WK8lyCk9jx', N'n1ZiuwE87U', N'178', N'GDiq5W1sIN')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'66', N'64', N'XWVd2ml3Sa', N'ZZFKvbtwnn', N'548', N'o04vxRz9U2')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'65', N'51', N'YdEtJwaBSN', N'4BccBdJ1tE', N'503', N's8WLF0A2Zj')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'64', N'11', N'SQUoaBub6h', N'RUZg4FEcxG', N'49', N'I6Vd1Npq4t')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'63', N'41', N'qeyP3XKa3P', N'KjVRdViaS9', N'697', N'QCxdBmj1TW')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'62', N'100', N'TuP5QwT4JG', N'8fgvhWx81R', N'428', N'nJt0CCP25t')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'61', N'65', N'EVGe7fsNNa', N'ZP1AMH68d3', N'734', N'Yr4U79bhJw')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'60', N'48', N'1bP2YSr7H2', N'14nl6IFOZj', N'582', N'D4dsGpZFFo')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'59', N'29', N'u98P2GtdNm', N'wHadgP8KxD', N'371', N'CULf6UrgT4')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'58', N'55', N'fzPDjjC8GI', N'wxtMVMofXw', N'96', N'vx0qb4YuKw')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'57', N'19', N'yB4PRzMe6J', N'juUznsLPw7', N'406', N'zQsES69SjK')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'56', N'75', N'0vJw9en8xw', N'eDZKgfJhrL', N'754', N'Q2D4UiKlco')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'55', N'51', N'0Ndf7ETR43', N'hv0pljpCue', N'960', N'V4CumrnxGg')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'54', N'87', N'2XXGUVPVug', N'pjOlUUHC0z', N'802', N'FOnb8DUyjz')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'53', N'83', N'abS4dKWxoW', N'k7jr7V5I8a', N'920', N'cSQtzGh5pB')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'52', N'56', N'3zgiSGzFCC', N'Jia9mFW5E1', N'198', N'Si6ouSTJ9u')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'51', N'23', N'jxqrxYW4FL', N'ZL3NSZPpSt', N'383', N'bZGwHFcnDv')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'50', N'74', N'CGi4AuvJUx', N'cvgMOhyN43', N'527', N'TVa8Ng4kOZ')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'49', N'20', N'xm8dzIztCU', N'OGbI7FiLKT', N'202', N'4bqGaI405Y')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'48', N'58', N'gsHD0Eb2EF', N'sYWEHvrPI4', N'987', N'59mNPX1cG7')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'47', N'48', N'kJYZMohMEf', N'mFtTAHzX8x', N'934', N'jWHDHQqmrY')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'46', N'19', N'16tdb74qtY', N'7H9sH2E4ZK', N'615', N'9iPIRJ3hQk')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'45', N'77', N'fasOxk9HNL', N'HP8qXbp9Jb', N'325', N'd83YiPkHNq')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'44', N'20', N'BKmMmi7ZAU', N'EBun1j5cZz', N'564', N'OiUWL18mdG')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'43', N'97', N'LliZLgwJDf', N'WMnOmmUvtX', N'538', N'izB07V1wcv')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'42', N'55', N'XK1nSuZNUn', N'KlIS9YcRt2', N'215', N'f2hJlcUCfk')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'41', N'90', N'VLRYvgXOjq', N'8ZJqLimeGN', N'604', N'XM822mzjzD')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'40', N'30', N'f9jC6FdgP1', N'ktni4SUmVE', N'567', N'XiabajHkjR')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'39', N'63', N'jeL45gIOQ9', N'lPKED36L2y', N'741', N'7rGCR7U3ss')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'38', N'49', N'J3fYByDmdG', N'fsEVvm08Oa', N'192', N'XDtqfn1SdC')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'37', N'12', N'SjQly6GYP6', N'Ee4GAdydTq', N'546', N'UjXj9P04h8')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'36', N'85', N'v2j579NEvC', N'4CWqGLLjEX', N'391', N'LEQBNHxu4v')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'35', N'59', N'DmKDfSW1Dp', N'oh2jG6tYrV', N'29', N'g6VGrwB6EY')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'34', N'52', N'RwJVT2Ct10', N'tDx7ePVCmJ', N'922', N'l8nOkcT62l')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'33', N'76', N'5ovSh3mZlZ', N'MbDh69QVlR', N'689', N'BOd1DXx4R6')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'32', N'59', N'4euJwus427', N'OXzvKepPfi', N'670', N'YO27aZvImx')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'31', N'34', N'afkAtSaaOC', N'VAvEYpIsBn', N'344', N'fiD6KMVndF')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'30', N'25', N'XZ44ifZ1DQ', N'LXFinYjJOn', N'37', N'PTO5DPhDNm')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'29', N'20', N'0B2Ov46Y9B', N'O7bqXlIOqF', N'69', N'Ub4EoYBxGq')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'28', N'95', N'w7G2BzXyMp', N'olXnvj5CeJ', N'345', N'glmPKPvcc1')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'27', N'95', N'5hoWVhxUOn', N'UXi1U0uUgo', N'74', N'jevllAuzFC')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'26', N'26', N't3CBjIjyVm', N'nLzfZUomPx', N'7', N'n0eUmb2xTB')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'25', N'35', N'olJK7L3TYB', N'382OhWlmAe', N'35', N'YaVwSoMyJO')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'24', N'100', N'VrYfmmw0EB', N'rBDfGgTutG', N'34', N'V6JOpEsunk')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'23', N'14', N'rNac4lPElG', N'1rvgq2vI5j', N'932', N'OCeBQri13S')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'22', N'31', N'C6uWJ1OtZA', N'PysScoELRF', N'514', N'AwHqAeanqM')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'21', N'20', N'rNjp5QKPKl', N'ceZULoqvtq', N'715', N'zuPT5sj4vC')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'20', N'22', N'wsdqu6c0L8', N'zKVPVFHLju', N'57', N'77QYY5c2Je')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'19', N'59', N'wivpOtjkA0', N'27W9kfr5Ad', N'496', N'RUv0OXDRFr')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'18', N'67', N'5NetuPckL6', N'd29pE724ub', N'140', N'sntsRdz6Iy')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'17', N'99', N'qYhu1Krvpn', N'v1KZlNwkfi', N'650', N'bl1YtNxyhM')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'16', N'39', N'39PfTmDX0Y', N'NBSbxo09DW', N'561', N'J2oLj1MV7n')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'15', N'2', N'DGLhnqfpVK', N'64AxqcerHu', N'702', N'WYGELsVzfS')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'14', N'56', N'KUn4sA24Al', N'1I2IFDiIyn', N'821', N'9cTpEkLENr')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'13', N'47', N'dN0O3byjII', N'9r1duq8vYN', N'907', N'PI95YCCCjs')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'12', N'84', N'aAonP0Vl6s', N'9dTCrtBmkq', N'131', N'QTNMsnyg0e')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'11', N'55', N'aF2SHsYj31', N'OtVwWSjR0H', N'703', N'iHb1woxysD')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'10', N'61', N'jlND5GLw3D', N'PRGObM3loS', N'918', N'jsfF10OI8U')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'9', N'25', N'k5wyLvwp7j', N'vHMRwFqBiq', N'375', N'irZdEsDIK0')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'8', N'27', N'K5Uu4BoLZ2', N'hgOgUTS42w', N'817', N'jACLYNDLvd')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'7', N'29', N'K19HFKLBCk', N'CuDYqwfHmo', N'274', N'3pjiXQQCer')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'6', N'75', N'srjNQIeBri', N'Ywb5vL3h1q', N'674', N'1YBHt41Xf2')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'5', N'94', N'MiCyld8JnG', N'Yj0U6RhcHC', N'658', N'OINjHs0uFv')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'4', N'72', N'7es0aDaz4W', N'Xsa1Zp1WgP', N'544', N'gBWZKeahCX')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'3', N'43', N'McZc5gfpq8', N'B38lygMG6M', N'233', N'cmSOAUAqXP')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'2', N'43', N'apDZGKelPi', N'OJPvXm07m2', N'973', N'aIKaW9ulG4')
GO

INSERT INTO [dbo].[phong_ban] ([id], [loai_phong_ban_id], [ma], [ten], [so_luong], [ghi_chu]) VALUES (N'1', N'40', N'O5iUwEDEl5', N'tbWXYXKvvx', N'705', N'gQi9TKztJl')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for quyen_han
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[quyen_han]') AND type IN ('U'))
	DROP TABLE [dbo].[quyen_han]
GO

CREATE TABLE [dbo].[quyen_han] (
  [id] int  NOT NULL,
  [ma] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ten] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [mo_ta] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[quyen_han] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of quyen_han
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'1', N'JyMITxCg1d', N'iqin1IjQC6', N'zSQ9ymXWep')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'2', N'3X89IMW0Id', N'V2lazrQXNz', N'l38NMaZ6eQ')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'3', N'J2gtUZ9TGw', N'lyzIjfStsd', N'B5Lav4lxD7')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'4', N'xtDLJvMoQg', N'h0lfcCMNBy', N'wGtYN2HT7r')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'5', N'bIvJy2k4nk', N'IgTCzEOA5A', N'HNsbUYedJh')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'6', N'HqocSPenzv', N'uZRJwajiLi', N'RfiTP68QcP')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'7', N'XE4b0PqMpu', N'xNhDk8ENpH', N'NkVhzJIXT6')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'8', N'E81AR4yi4c', N'WiYyY58QUb', N'fhGVfjAQdZ')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'9', N'TiK4lT2ecc', N'YPukF96a6l', N'X9grnQVGrk')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'10', N'SNFSZjHJAp', N'Iiyy7d4VHb', N'lYejVV0MaX')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'11', N'IX4RnAc4PM', N'EOCwSQksmV', N'Nj20JKV5LV')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'12', N'VUVjYhWs4j', N'J3Rq56lkJC', N'BP1yhxydIG')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'13', N'5oPHWrw4ae', N'BDidL00K6m', N'2yZx6OT9bi')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'14', N'26EF1UQu1h', N'Q8MNTwLeEd', N'4eaUjvnxUS')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'15', N'f2uiefT3hf', N'A5NCVGXTRv', N'Yfs2ACNED3')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'16', N'4yTMKA93sW', N'0HUsI2HNPq', N'MnZVhDsp1d')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'17', N'IlmrYohVxp', N'rzqfwQL5hX', N'sFd2ZkbB4a')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'18', N'IMeyaCzkI4', N'NIPJozV3Mn', N'44bSV6iNIf')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'19', N'1zbFu9bqAj', N'SXdtLh9rY6', N'f53zWoR2v5')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'20', N'2KGnBm3VvS', N'iZOOmns6Xp', N'SvkJ34zQog')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'21', N'5ceWbGc78i', N'NP2svEnAJF', N'2mU2rg7JEl')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'22', N'7wt0E5TPcD', N'7x2J2VnB13', N'hprjPN1248')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'23', N'n465ymwhxu', N'6d9IAfwbfp', N'eMHuS9FoW6')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'24', N'WseJtRteaU', N'9LOdxEtoxv', N'J20X7UWOMp')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'25', N'ueTU6vII1P', N'lTak1URfPx', N'bWhKPbyjxa')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'26', N'tRcMNxHrHf', N'Fn729koLmg', N'0Dr0jf21UC')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'27', N'rWN7L1ofqT', N'Krj66CXuoG', N'6gR4KUISKB')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'28', N'gRedt3qlFc', N'QFKQX0N2z2', N'UQtXU7733s')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'29', N'jOBeBJKL5r', N'64wK0GuaLv', N'sgpQo9j99F')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'30', N'NeVTIgBgDg', N'9MIQNlJTsh', N'RRa3pnFZEq')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'31', N'FMBuNX4eUt', N'ZgEkUdgRZC', N'duQl65QQla')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'32', N'JftXyntMF7', N'PRd9BgpMg5', N'EnkMqljka9')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'33', N'3s7gjcGOrm', N'OZGGG7gOfb', N'pWMUKQOaIR')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'34', N'C46YpodeGB', N'6DlExr4dA9', N'O1ObJZrdYh')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'35', N'0Z6DPTHbsB', N'2EWD35Klqe', N'UqjvIpubEi')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'36', N'g1I58uYhA2', N'YcYzDzF23I', N'vvt4VyW1d5')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'37', N'e3jSjNdZQT', N'nCyjQbRmoQ', N'GbTPDSdRpv')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'38', N'DmCmEydMs6', N'egpQ4buix6', N'8tuHtQ7C4x')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'39', N'Glc2rv43x4', N'V56BedIifi', N'Uc0haocrQZ')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'40', N'Z4rpQl6JdO', N'jPQDXFYNGp', N'5BSMkDFFno')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'41', N'KPgas0zkbH', N'tn3GglPgZC', N'JJWSI6A8Sf')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'42', N'8Te2Y1SIKX', N'XVNbqq1yVl', N'iMopRT5wDf')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'43', N'94LbtOpXCo', N'eaNZxCGl5Y', N'E7iY0FcPJw')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'44', N'VPUZKujwSc', N'5tENqh2NgD', N'MKwMM7mPFK')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'45', N'90mRurWAlF', N'bRYDatJ2qG', N'MYZZWPIWdb')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'46', N'2Rn5nt0J6Q', N'HPzgTL0i2X', N'R1s0OHuDLJ')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'47', N'ZeV3domp4z', N'rQjuFBDYUN', N'qpA3YKAMmm')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'48', N'FE6tulzQ5d', N'wKglyXTGRa', N'5EsGOJLFvb')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'49', N'EW8C6YZ4xH', N'0TRfKES2rj', N'hGqcIY3jZM')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'50', N'bLAvGPciUp', N'MJ4b2tydY2', N'LADlLtczXW')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'51', N'Zx8Ko845EL', N'nOXO71XG9g', N'y6LP1m6Qkq')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'52', N'kcqhaf7S1H', N'k8GD1SJLVi', N'I6JXSaDS9K')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'53', N'aURMwW3ch3', N'Kad6oAbaC4', N'FLvkR3wgiZ')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'54', N'tbxVYvTGv8', N'WV0I8v49QJ', N's5EgfHS2vU')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'55', N'QmylyI3ccN', N'DNFs1kKBqE', N'BAgjJZOZ8w')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'56', N'DOWJBa7PKt', N'86TcqtaMDg', N'fAdEL5HnGJ')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'57', N'RlxIqitCOy', N'dW9zPycG2e', N'lU2dDorliN')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'58', N'2ClquGDjsn', N'TzlEIWYbOi', N'QhG0CL03Dh')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'59', N'Sobrt75pv1', N'noWZmiIAPL', N'twO71VrSDJ')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'60', N'z20p6fQEXp', N'kMRFIrCZ8b', N'PpYotIGyr1')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'61', N'rBAfjqIq2n', N'UmyR98ocXd', N'T92d7dje9s')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'62', N'OKK3WCXg40', N'VzRiZ58Usm', N'SjH3j4nygk')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'63', N'cZ4BpzKl6V', N'T1HBALWke1', N'J8NdaRYu7f')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'64', N'biNnZyxqY7', N'OhDxsVkFGZ', N'SknpNYQnWF')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'65', N'gLmz6zKvMq', N'ZHbuBc5oyR', N'uy690978xa')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'66', N'9ZBhkN9zB5', N'bu9TjnyeOz', N'qzCpdLFht5')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'67', N'cNJOlrIqKZ', N'yAUI0tfOaV', N'n1THtGalOZ')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'68', N'3vaEXi4lWI', N'BMdLMEjOoy', N'Bo4HrLs0VK')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'69', N'4PLiK3bYzn', N'qMmRLelhqx', N'Qz8R7tUWcm')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'70', N'BxAgoEHyS0', N'DijqkhxcZl', N'LdlJ5RDazV')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'71', N'rCXV68TwUN', N'GlMxIBBfWT', N'rUNuNHQujt')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'72', N'NwqrnOCxRX', N'gUfwlhJAie', N'9HPqdkg2RL')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'73', N'NDhsJi7xU7', N'Sg57XCxXGo', N'qceSBhE8Zd')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'74', N'PjSTQZ16HL', N'SRgkOQG4d6', N'76Prz48yvR')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'75', N'JaLEFrZmW6', N'bKPub9sHZM', N'FTp6cG2fL1')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'76', N'q7g4Z9qVnt', N'7kLQUBNBUG', N'zqidnDSImq')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'77', N'PI0X3AR40K', N'FchL9MgISw', N'yctES0MGIQ')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'78', N'16Nq4WUmkZ', N'KZktbTDZqw', N'4w7ptNVB1V')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'79', N'WXRxRqkXxQ', N'LOqoBobRCj', N'IxGCo7ClPu')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'80', N'zMASP3SaMi', N'NhAhM6uJLI', N'semLiiU0wT')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'81', N'eMsUigox96', N'qlfCndK4MT', N'CfvoKZmWvF')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'82', N'X4b4sECIVP', N'SFUzLopesV', N'HmuvGOFSaW')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'83', N'5nVa1p1fEF', N'jfMCTAFbtc', N'4Ee7kcVR1h')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'84', N'6xHmJdg891', N'MMymZwcgVI', N'73KyK3LuK8')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'85', N'vPBnLTbJqg', N'PWisP6JEMn', N'Zef1cnZrAX')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'86', N'VKkbkz82Wz', N'ituDriCz9O', N'DhBhZ29Wci')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'87', N'3r1uTlk2bZ', N'sjCox2ZUKe', N'7umjUPrs6w')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'88', N'4OTZIKTwun', N'jiNBhyBqZE', N'jJiZb54rKA')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'89', N'BkbMzLMPlX', N'YfKbcSInNq', N'5gEtu7y1WU')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'90', N'cil6nmvie0', N'LC7CKKiLtH', N'35KZGM4y2T')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'91', N'fneJ6hCbWc', N'Td4WvbEv0f', N'F1yUu4BKKj')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'92', N'NwlFZ9s9Xn', N'l6umhnnCvz', N'sCgjnqpp21')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'93', N'cdO5QqAL1L', N'nV6uLFnE5v', N'ePDK21BY8m')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'94', N'XWSN1XVUZv', N'sTgE0Vwrmm', N'MBGzgHdqqX')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'95', N'aEvWOdqoYt', N'LZQ7vRH4id', N'VEN4j0sEKA')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'96', N'Sn7LpjQvh1', N'yfiHs2bRWa', N'z7iJVJ7oUk')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'97', N'25fAORTSuZ', N'dyWBwQxWPY', N'1fQ9vkR090')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'98', N'nX8AvvheO5', N'1xdmUX6l9E', N'PdOHEl7KXQ')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'99', N'AO8FGkQsFV', N'hrsgdpHzsA', N'HMnvSvvQyw')
GO

INSERT INTO [dbo].[quyen_han] ([id], [ma], [ten], [mo_ta]) VALUES (N'100', N'EBlsV0jh4T', N'95sXuzLczH', N'PPVL6ZZVsp')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for san_pham
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[san_pham]') AND type IN ('U'))
	DROP TABLE [dbo].[san_pham]
GO

CREATE TABLE [dbo].[san_pham] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [ma] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ten] nvarchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [mota] nvarchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [website] nvarchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [gia_ban] decimal(20)  NULL,
  [so_luong] int  NULL,
  [id_loai_sp] int  NULL,
  [trang_thai] int  NULL
)
GO

ALTER TABLE [dbo].[san_pham] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of san_pham
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[san_pham] ON
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'1', N'poNhslbg5E', N'0vyhrDwmPh', N'9qLKcGu2St', N'wzvt7T3kpf', N'454', N'829', N'12', N'1')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'2', N'tJDphGeT4w', N'ckqMKe04kg', N'Nj4UmDnX5z', N'FHZLCETLo7', N'96', N'392', N'12', N'1')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'3', N'k51LTD8ybj', N'BkJ79AzZgq', N'KToWvmSvnC', N'o9etKNIeBU', N'798', N'681', N'12', N'1')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'4', N'EGTzI3sex5', N'ZOsbkiYni8', N'Y7zDTydWbE', N'xer6CXR00b', N'917', N'929', N'12', N'1')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'5', N'vDslEQK1XN', N'MYvUXmuP4W', N'2r4u9XVUUF', N'9Nio2UnDoK', N'675', N'686', N'12', N'1')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'6', N'8sP5u7U8qf', N'wdifknOEtU', N'tU6mAahlrd', N'rbsakZPZNm', N'610', N'995', N'12', N'1')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'7', N'UCmAYZnHYM', N'43kTeUAyaT', N'O1y8knzaGD', N'hHI6NEgwPN', N'587', N'458', N'12', N'1')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'8', N'2lP4ekro9o', N'TV95EDvIlg', N'xptbU9TMMN', N'nbpSIncQTx', N'470', N'397', N'12', N'1')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'9', N'NuBvcUFqbn', N'v3Z3i9EHO1', N'IkoEbjKw7d', N'hz6vuN9OqR', N'512', N'66', N'12', N'1')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'10', N'Z8XVCZFp1l', N'0Humbw2N4m', N'upLtqOLCFG', N'pQVqSGWF94', N'780', N'521', N'12', N'1')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'11', N'7GgTAi8a0Z', N'K5sVZzkoT1', N'rre2rY7maI', N'pEzZsib2ZQ', N'291', N'266', N'8', N'0')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'12', N'vIULIArVA7', N'F8CRo4WZN1', N'YW6GNUrt9H', N'dV4P36CxVU', N'760', N'396', N'8', N'0')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'13', N'PiRiA7ZQQ0', N'ax2k49Pd5U', N'rwBC8pToSl', N'RBmXB5yoDU', N'663', N'430', N'8', N'0')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'14', N'rV5Bf7OGs1', N'yWhN6suibh', N'3NTcuUFy2b', N'UwdSqiUW8r', N'298', N'493', N'8', N'0')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'15', N'2Z9rs5NM65', N'Z7u3I3mnNZ', N'C7NyHsck4r', N'wLOLiuSsZU', N'972', N'856', N'8', N'0')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'16', N'e8MQZqFNLF', N'8pfm66tqL0', N'pxeWOnSyBz', N's95nvK9Giw', N'665', N'625', N'8', N'0')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'17', N'wjg09sPTs2', N'adgrQtAJHj', N'p2ZG36ghD1', N'8rRFLqZUPx', N'848', N'940', N'8', N'0')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'18', N'9gy4bDnyLY', N'g1JmtdiZBd', N'pZSgKB6A0X', N'D56DPDR6A0', N'333', N'521', N'8', N'0')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'19', N'uoVa70RLHX', N'JhLDCfk8gp', N'kubm6qIrur', N'gr6ID8sKK5', N'663', N'97', N'8', N'0')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'20', N'C41rDlWbwB', N'mYcGWVsN74', N'ozMBYenQpq', N'kzLQvoUnQm', N'605', N'876', N'8', N'0')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'21', N'rWnJbpbr6T', N'ongR8Auu1D', N'hcJihBlTDh', N'vre7f6DGqk', N'950', N'144', N'8', N'0')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'22', N'gKtj70Ywhh', N'yBeAvDL8AI', N'MlPwFJrizf', N'6vtcQSoNBg', N'412', N'337', N'8', N'0')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'23', N'AFzcSqRdii', N'3YnGFeuZPC', N'px3JtGAfyS', N'QzrJMlrH01', N'325', N'952', N'8', N'0')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'24', N'Yz1y9dJnKf', N'93jsjeLTao', N'h0vDVB4s7e', N'EK0ELTyRjS', N'599', N'89', N'8', N'0')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'25', N'72uaBB0PJQ', N'bVTF9ygi9s', N'O5s1sapa12', N'7AxTEyjpN3', N'675', N'132', N'8', N'0')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'26', N'uZOC7qgAn8', N'hQ80wuxgAn', N'OavadzTz10', N'IMGbyF6vsR', N'746', N'527', N'44', N'0')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'27', N'buggDx7Xxe', N'40lCd09q34', N'mp0mwaEzX3', N'jH0iKoUnsa', N'943', N'245', N'44', N'0')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'28', N'8SJI3vrftG', N'ZDgKRIRke7', N'r5bf2OF4dC', N'yoKK5qWQWt', N'357', N'642', N'44', N'0')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'29', N'kXho9DnBlj', N'RBIQKo8jhr', N'ZaoA8rIwDh', N'kFTsJqapl9', N'403', N'350', N'44', N'0')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'30', N'tmOHkwCc8O', N'D0oLgZNhwA', N'mt0HWJy1DA', N'vHEeWL53V3', N'300', N'360', N'44', N'0')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'31', N'wavvnvjlDX', N'm1FOX6FUdD', N'kd8wTd9UTH', N'yiMwdZcJoz', N'465', N'967', N'22', N'1')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'32', N'zR6YJzL8ux', N'KzVyqCPqXq', N'0rNgu3WODX', N'XfFm8ptZl8', N'399', N'946', N'22', N'1')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'33', N'BRd2GeqEkS', N'WEc5VCNB3n', N'aAFr3R9GFM', N'dWagDaUGlw', N'187', N'212', N'22', N'1')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'34', N'LPUAYsP57Z', N'nsbn8eb1RU', N'KDwQpGHw2K', N'seCxtjaCm8', N'997', N'966', N'22', N'1')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'35', N'5aTLGfpf7B', N'LVq0WMkI4q', N'ul3qHFnxo3', N'PUGnl7vhWd', N'394', N'218', N'22', N'1')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'36', N'8HPRkwSUqa', N'VTFJ3gnI3k', N'iydPpdANHh', N'kqJoowY3qe', N'991', N'450', N'22', N'1')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'37', N'PaRzJk47mn', N'ZMEnUhqSXy', N'5F1XVR3YJZ', N'WUew0geoMK', N'956', N'696', N'22', N'1')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'38', N'Sasm1PaJVh', N'NNXvYczL0q', N'RZLjik7gBy', N'YWz9jvUKwW', N'175', N'549', N'22', N'1')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'39', N'wRdxQhAkMk', N'7UTdWBSkpi', N'2umJUvJoKj', N'I3HZY8kYsP', N'641', N'907', N'22', N'1')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'40', N'vEh8x80OvG', N'b13hbBNQIG', N'FEZFznoELu', N'sSJc1pyrsW', N'233', N'713', N'22', N'1')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'41', N'iFroYNtM6Y', N'NYN1vohbOp', N'NrR2GAvd9v', N'xeFlI5LVLx', N'327', N'522', N'33', N'0')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'42', N'PjtEbDBusD', N'calA3zAofX', N'AZoUFXFOcZ', N'j5zTE1VPK0', N'538', N'96', N'33', N'0')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'43', N'LhyZY4gAEM', N'WJifTCQPq4', N'teJNuL5h2p', N'cghCLpqjfC', N'30', N'585', N'33', N'0')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'44', N'rP00HOKVwF', N'NqQQMBmaJI', N'nXqbS6ZhgL', N'uj4q5b67oy', N'474', N'110', N'33', N'0')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'45', N'YkwL9dDhIq', N'qfL6Cz7FFn', N'EqiVrrTy3e', N'ReDvazvF3J', N'195', N'845', N'33', N'0')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'46', N'tvJLyTgY6M', N'RnBiy8MpAf', N'AucjDyqX8m', N'YnpRnlX3Ft', N'193', N'257', N'33', N'0')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'47', N'JsIL5KiewG', N'Pc1bPOB3V1', N'Hruz20q1MA', N'4Tkrbqd8pL', N'656', N'276', N'33', N'0')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'48', N'Seyq1JIhqc', N'GKQvebPbdw', N'Z703kltBYy', N'jNJUzAideZ', N'14', N'123', N'33', N'0')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'49', N'PvUyEr58oB', N'BRDSxmNhjg', N'WpcqwpGcZR', N'WgE7mzk9U7', N'707', N'71', N'33', N'0')
GO

INSERT INTO [dbo].[san_pham] ([id], [ma], [ten], [mota], [website], [gia_ban], [so_luong], [id_loai_sp], [trang_thai]) VALUES (N'50', N'gJd6DLlUZP', N'C0JSj6yuOj', N'iGGMtJk9sn', N'EEegUKffeD', N'851', N'587', N'33', N'0')
GO

SET IDENTITY_INSERT [dbo].[san_pham] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for tai_khoan
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tai_khoan]') AND type IN ('U'))
	DROP TABLE [dbo].[tai_khoan]
GO

CREATE TABLE [dbo].[tai_khoan] (
  [id] int  NOT NULL,
  [chuc_vu_id] int  NULL,
  [ma] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ten_tai_khoan] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [mat_khau] varchar(70) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ho_va_ten] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [cmnd] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [trang_thai] int  NULL
)
GO

ALTER TABLE [dbo].[tai_khoan] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tai_khoan
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'1', N'19', N'FWsQxmnvyC', N'rsI1WDsJet', N'YdadhrwCE7', N'jXOTnLy1O9', N'ezHIoW91Bi', N'1')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'2', N'23', N'QAugjkOY2v', N'bsd1fUxLbs', N'QG5I1hRBwH', N'hRRM3sT1l8', N'UtWgnmhpYU', N'1')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'3', N'33', N'HVc0NGYVqa', N'oVwqdE5F6v', N'oZAEbroYjH', N'OReatgje9W', N's1GYfrY5de', N'1')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'4', N'21', N'CSLbueMAez', N'NM5pOfeFb6', N'X6zczOjM74', N'pbBCYsWkoi', N'aMU5gLxBef', N'1')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'5', N'21', N'zymCBWpzi9', N'O70nwOEXSU', N'TIMDnVlzh2', N'TNBLWlVaks', N'ComPWHeBHj', N'1')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'6', N'37', N'E1zbiu7gUB', N'NBQm4t2pDg', N'3bpycSb87o', N'DcGyYuUUKm', N'lzj7NCrg1Z', N'2')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'7', N'48', N'qJocEOgbWx', N'7UrQrhkYj6', N'u49gzuG5m9', N'E0IUKhlMaH', N'WvS8KsiXs5', N'1')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'8', N'3', N'g62GEcg2fH', N'g9z5DOQP9t', N'S3t9yvWpRv', N'FyFOJoO6rb', N'OvItWgXX5k', N'2')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'9', N'49', N'fkBJqxnyUt', N'eH7enb12xM', N'b6XfC8R9GO', N'zFCF2X6VZb', N'lNg0DatIvt', N'2')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'10', N'32', N'tkpEzFRX0t', N'mIMJng3lvW', N'ObGnp9nsf1', N'NKSa7Zy1Os', N'hR0UZP0orE', N'2')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'11', N'50', N'cFp1WlzYGx', N'7QNIphCQzr', N'8CcMxFueEH', N'NUOysXqlkX', N'GaYOxoJ4aL', N'2')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'12', N'18', N'xOdhYkMNEG', N'QFiRAqPzmq', N'RAMdu4aahS', N'aS5HTC3EJx', N'Q3wI5xtb3T', N'2')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'13', N'24', N'9vXaDeqG2n', N'OMDVJHEGVI', N'rRLfszKWn2', N'kAY0Nr4JQA', N'0GEEgCNJ7Z', N'2')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'14', N'10', N'I2bHTNEOlV', N'Ug3O3MACiQ', N'OeWXzvwv9I', N'1vZfY5UoYI', N'PnDHg4r7rM', N'2')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'15', N'25', N'dxQ8kRk5Ko', N'YapU6kctCZ', N'1P8fMY5g2X', N'AJ2DDx1MGC', N'pNdxLo5dcD', N'2')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'16', N'2', N'wST2mPkpyy', N'P4f7x5s1Rp', N'90aFpoScp4', N'J315XoudQV', N'Nah24FVRng', N'2')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'17', N'28', N'WNQTP8aI3w', N'04X7816XI8', N'yOnLao2i45', N'Np0AKQsQwy', N'95C9jkkDzu', N'2')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'18', N'27', N'WJspVmrLqo', N'hFvvbNezB8', N'DwAsO4dFP0', N'p8NgEtwJGg', N'Xe0BO8IHME', N'3')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'19', N'3', N'1W0wHa5wOn', N'WhK1F8pq7l', N'rJl6pWb3Qq', N'8VIawwh2ho', N'hUo0jRBmTV', N'2')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'20', N'3', N'FkotBVsWm1', N'2YOSQOjyfy', N'RiesTtITho', N'iavuSB6cFc', N'eQM6g8jHQh', N'3')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'21', N'18', N'ExVuAOEwSP', N'jq3JklGdHW', N'v5CuP5hb13', N'0PHhtmqDv4', N'bSkVGGWLjU', N'3')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'22', N'28', N'PazigU1Zqs', N'JkbQQZh8RL', N'SLnQbaDyME', N'Bk0lPp1L2n', N'MgOmmkMcmr', N'3')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'23', N'18', N'ewy3ekC3Ic', N'FyOjRZ4hwd', N'yj0r0R0oc2', N'wR0BLUKqxU', N'gPATxs4RTr', N'3')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'24', N'18', N'UabVHyGTqX', N'ZTZsp9utay', N'BVEGQmtosN', N'RAKkiwhs4b', N'WiY1z3K3Sf', N'3')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'25', N'28', N'FM7mBRisLu', N'YMKJ6fyLGq', N'DLj38ZmS66', N'5fhnqYd2KL', N'fP7TwOzCzc', N'3')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'26', N'21', N'DbpDMQRqUz', N'C71KtYylac', N'5GElSZgd4i', N'VMmVsUNGKL', N'HZRQJJv7ya', N'4')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'27', N'12', N'kD4x6thyj8', N'qluG2ZNjRR', N'Lwxg1wMCbv', N'7bjJKk9qQU', N'0QPdaEUkMu', N'4')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'28', N'12', N'xrp5y1xKWQ', N'lMecdC2RHE', N'0ysnNC8UDP', N'0tB8xPLPB4', N'oPv6mJJDSa', N'4')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'29', N'1', N'y45I8X2w0H', N'GSO7KaD6Dh', N'1w2xvwBTBb', N'8R1HU4EW5i', N'l7YFhZI5vp', N'4')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'30', N'4', N'QiwEecMa8x', N'p1M6xHEE2i', N't94zVf0JE2', N'5IfV4E1ewE', N'1erbinyne1', N'4')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'31', N'32', N'NbKukTTOaY', N'BQaxkgLlhv', N'ryaNb2wT2H', N'DnOD68BMW5', N'FEVQxnyJVf', N'4')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'32', N'16', N'VvF4ShOTHQ', N'iZ6gPdCn7L', N'xRpF8JWC1F', N'TKDzNTbg8Z', N'URSwahryke', N'4')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'33', N'42', N'e8JiYprDB1', N'LtMBg0XwPB', N'McEEayuOGY', N'xb0ESOSBBI', N'l7kbBVTjmP', N'1')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'34', N'29', N'ES8vkyNORf', N'HAFCLvBnGq', N'WMaB9ASZgF', N'pCKFEJ8l1T', N'tiA7qM75TO', N'1')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'35', N'49', N'Eg3GXvcs9K', N'S2QxllbTT4', N'HH1wBVmnzR', N'M1ys8hXCSK', N'TeQxzqVHaK', N'1')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'36', N'16', N'dYtvJ8L3a0', N'DB61sM013U', N'indVbSwH7u', N'tACqYFE6dR', N's7p8JhR5xk', N'1')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'37', N'32', N'8qnVXcmtwO', N'lf0fKFdDpp', N'xBxZpntzUC', N'QNt7xHU9N9', N'Y7172pD90k', N'1')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'38', N'18', N'96EjyMqA77', N'aU54A1j4Xk', N'sEM3qZHzXU', N'jY23pPiPe3', N'n3imlVD2F7', N'1')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'39', N'32', N's9AkCyCZms', N'yIw3dLYqPA', N'Z6CCtqIxXd', N'WxqzBdJ2bJ', N'IDPJB77V6E', N'1')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'40', N'31', N'E1caBLnCqh', N'GK9WNaG1lR', N'r5407PPHrY', N'QpTWIGvSgM', N'cFSyPpw1D9', N'1')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'41', N'41', N'2Z8zHL4gQf', N'JMGNKYAuSC', N'N4YOpviBNp', N'QVl64HSYqW', N'yOuGMYRHcg', N'1')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'42', N'12', N'3Q5C0SpmrX', N'2TJ9AOekX6', N'UhoVWl21lm', N'W9k5PCBhdl', N'PhYkdC1GXI', N'2')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'43', N'18', N'sl74CPsGe7', N'BEjvyG7lgc', N'TgAPYLgFy3', N'p6rUTQtHnx', N'4bXMTEHUMq', N'2')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'44', N'9', N'01of9WPBLZ', N'3zqtwkGABi', N'TG4GrWHH4O', N'WJ54JsKTTf', N'kGRl1U0ktd', N'2')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'45', N'21', N'LHPZofa4oq', N'kqBx5kmUbU', N'r8KG9kk3mW', N'yjHcZpfrY4', N'N8DkrKz47M', N'2')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'46', N'27', N'a5wSN47xrF', N'gaGHv1uyG4', N'uue9uMWHpI', N'GMN70AQbZg', N'GMds5lcVn3', N'2')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'47', N'33', N'LXN2spExNq', N'63BzY2Bbla', N'cymWFQSWUh', N'WfgeZ4p7X0', N'hURN2F7tLi', N'2')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'48', N'39', N'7QmKBzuKjV', N'XNK8vKfJeh', N'IVoybKfUxw', N'vNepHKgL33', N'AikbwTnTlL', N'2')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'49', N'20', N'o73ZEBLZeP', N'5uIVCAsHDP', N'tE5ihoJ5BG', N's1eKSqCrss', N'4HwUJYIwwK', N'2')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'50', N'38', N'PRDsIRqfdY', N'UWBw1cE9u0', N'fvEfivExeD', N'Z0smziIc7v', N'msr3YvZ3ft', N'2')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'51', N'40', N'StFW5jhBQ1', N'frrcmkDwFV', N'QvDUqHFAWz', N'hjImtrHnN8', N'w0z8tqWBFp', N'2')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'52', N'12', N'UOJEiCYbnr', N'FdrIrPSkqd', N'nORiEU34UE', N'PTipAmeawu', N'h9czSXVo4T', N'2')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'53', N'16', N'KNUo1E6D0v', N'Soxq0R3thC', N'cMmPYDB3Iv', N'nKJUmsRnTd', N'ZagcIodtlm', N'2')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'54', N'10', N'iIRV7RXlz7', N'52JvZn7Lvn', N'Pt117X2mQr', N'bEtrQ0pgB2', N'51FaL85RuJ', N'2')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'55', N'42', N'UFZHRhn13A', N'VFDKLajDE1', N'ClcZmNgEoz', N'gB5g8UBr6C', N'9XZ7YcyE1V', N'2')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'56', N'6', N'htwKgw3EKv', N'Fk0sBjYb8d', N'RN9mytkny4', N'tQnCIcZUNO', N'cjD21qrmMd', N'3')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'57', N'34', N'b1S9UWBvfU', N'fwdN0oM1mu', N'dl79wUOGiN', N'Jr50fH4VwI', N'mLj8CBmCzQ', N'3')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'58', N'6', N'bASTzS75B1', N'5JcSbJxmtw', N'UyE49HvDYw', N'V2Gk6gWxel', N'YLA5AfEr0u', N'3')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'59', N'14', N'Si74VQFlrK', N'Tm54GFA9uV', N'TcGBsa3tvo', N'dRl5AwaaMT', N'QHhZgr41p8', N'3')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'60', N'33', N'a16RxfHkSj', N'8Kc8LLhDnc', N'OxFkAmrqky', N'8r9T2hHuay', N'GWY04KE315', N'3')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'61', N'50', N'2goBRb258f', N'jY6SFn73Xy', N'LXA2z7sPXa', N'8zxzFnDazM', N'c2GK1zyDeV', N'3')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'62', N'50', N'JHcezNdd8v', N'VGLTIEUuHh', N'KnF3YUGrGh', N'bUsJ88Yz2P', N'uii1aUSOlR', N'3')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'63', N'29', N'2TVAlZczkV', N'iA6HMMu34L', N'Ult1JjYgcU', N'cFK5AeZOxR', N'kAUx3lZPHz', N'3')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'64', N'24', N'e5oEQ3xqtg', N'8Di8qp05Lt', N'SWgldsY278', N'HfUkC1Gxtc', N'8MsARhu61A', N'3')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'65', N'26', N'qvFMwjGy1c', N'UKloolISo6', N'XzkwMdUqsV', N'rwQJrftKzS', N'2YjwMxDPnZ', N'3')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'66', N'9', N'BGKMMQtakU', N'gJ8d9eRPeS', N'NYdXSTIKED', N'IUuqXMpGf2', N'yICny1sTIK', N'3')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'67', N'42', N'ubPDbkwY2g', N'NhE9hXU1n1', N'eI53VuQlyz', N'WijnXgO78z', N'wODt8201Dc', N'3')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'68', N'45', N'mZUAlU3n0f', N'Tksn6uCXo6', N'ZgBvIs9dcN', N'Zp4q9vP4ck', N'DOXppf359c', N'3')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'69', N'15', N'LCx2TMHCiF', N'Vfvf7VQk02', N'Z2hl4qprt7', N'gaLOzPhfdI', N'xk8ypOqaBm', N'3')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'70', N'18', N'sGSOFHC4Nq', N'5qbq3uxqsG', N'qFLq5YU0tx', N'xZXi5GILXf', N'5ZqP36Fqta', N'3')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'71', N'43', N'NMy0aiOQOo', N'brGRG9OleR', N'pSHi2cdDew', N'U3hZH9Y0vI', N'JDNZVDEXmp', N'4')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'72', N'20', N'TkvHVNeQVI', N'7hoUDLYbxd', N'UFFPgyjHpr', N'BpJwfh1Err', N'z5ECpeXHnA', N'4')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'73', N'10', N'7vE5zeRjbw', N'I0ghwMtPI1', N'4Zdk1zEN4X', N'uBxa6v30lx', N'8YF6zZ2SAY', N'4')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'74', N'4', N'pdnXMrqEY8', N'httl8XVcJm', N'EP8tUekKxU', N'kNJ1OQFeFQ', N'uPzqXtviB9', N'4')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'75', N'22', N'XkhTB6TzAP', N'MdF2pB07Eb', N'rmRKBp1mO0', N'UVBN3Zl4OI', N'Xv3tV7aSLm', N'4')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'76', N'25', N'ejLn91x4Yc', N'yxAwf1IlNT', N'kwf37LN1XM', N'ctdNZeOsJz', N'50HjpW4B2g', N'4')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'77', N'23', N'LijCupzdY4', N'j9UWUdOZr8', N'2IB6NNRxld', N'fOCalMMP2e', N'HJ8cKqFeiY', N'4')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'78', N'36', N'BdsvDxLQqc', N'cZ1wbYhjqx', N'h5boAAffVe', N'KU0smNyFgX', N'xtGQmC4RRb', N'4')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'79', N'46', N'5IIcyIiNgo', N'OLe8KRiJc6', N'2rb9NkwneT', N'ztVbxQMI24', N'NW3U2rpLXn', N'4')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'80', N'3', N'npDfwurW1V', N'E7bFjlTsJe', N'VDxVcAKZQm', N'VGa22wiYvi', N'8Mgtcn1nMD', N'4')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'81', N'38', N'8bTgcKbsI9', N'fQjILEcuNF', N'BTjw9AvjHt', N'0x7qqIi0cH', N'6SsAjxuEZ8', N'4')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'82', N'13', N'KNU0jQFYqN', N'EuGTCwlpfB', N'uESEdk5nZm', N'BQN8kQ0tXh', N'cJNF6QkpwK', N'4')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'83', N'12', N'ZQEJs1QAIC', N'YoOgRQvmWa', N'qt5O1UoR2r', N'vZKVrdr1ol', N'R0WgTdxRLa', N'2')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'84', N'3', N'38ziU32k7W', N'AgYKHFwb3I', N'UtzCxcZVRQ', N'nK8qtpohQr', N'Mnya6KpLyi', N'2')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'85', N'2', N'iHojG8v9tP', N'U4kzMNG0KM', N'mBQ48ZGJkK', N'SBnSNyudiW', N'Gyn4y5spPx', N'2')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'86', N'43', N'w3XrKqNAQg', N'uPCDHzvkk4', N'dG4FeyQvBr', N'oXryTT7usk', N'GVEPCrzGlp', N'2')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'87', N'47', N'06tiLUkARd', N'McKdEjl5tt', N'8fngqG3kuj', N'7d4i6cRYjO', N'h5PuCAeAAD', N'2')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'88', N'12', N'Ivq0vaAySF', N'ypl3SLOeQh', N'mZJhPStTcq', N'FCb5nyPsWr', N'WsMAKepauy', N'2')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'89', N'28', N'sukX4I1mpS', N'kwAuM2nZBU', N'8AIZ3SCBSh', N'LuwPJZbIRV', N'5FzB9dmEdo', N'2')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'90', N'13', N'avdc2ueePf', N'zvO1sPkfmZ', N'OHZ2MO5hcY', N'TUDpcbcdYM', N'li8IVJC6i0', N'2')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'91', N'11', N'CSeNHTw2hV', N'FDScWFwDyy', N'17OYYMlgjK', N'jGpcHiXklM', N'ZT3KuhNCOP', N'2')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'92', N'35', N'sAVmMs1mrg', N'Dwj0WcZQwf', N'cYma34lJSH', N'LRzfJavj5j', N'm19vvjPFId', N'2')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'93', N'7', N'qI2BUB5xAw', N'ey4cmCwiKb', N'czTwgYgRV0', N'G3InC9RzUa', N'rrajR6rV7e', N'2')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'94', N'31', N'9wGof3Y2FU', N'OdwbX9OSeI', N'wGWXMwvXcI', N'WyRX6iREs4', N'FE3bNKCmGm', N'2')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'95', N'15', N'GHHEdMza8F', N'lKxikrSxZp', N'lGpxPpR0Xp', N'pe4zztEfA6', N'RfnZKoCuZT', N'2')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'96', N'49', N'P9EEtBwecN', N'K4FwIkDszm', N'hI4l2Mog6x', N'rDF3MZUYAd', N'cqE86U6Uep', N'1')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'97', N'39', N'IV89gUz5ti', N'u0Ia3Ulaqx', N'qV5VtR90gI', N'oK2byPT1Ti', N'SRMYYH5Iej', N'1')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'98', N'46', N'Ww4BWyjaCM', N'jDvDpcbDyi', N'6YPVae6Uuk', N'BqFgeLv0jR', N'HaoOZeROvp', N'1')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'99', N'43', N'PC6zytIwlH', N'TtOSmEZ4o4', N'8PFtjRlQ2O', N'rGjGkQKC3o', N'8jLNFs20nn', N'1')
GO

INSERT INTO [dbo].[tai_khoan] ([id], [chuc_vu_id], [ma], [ten_tai_khoan], [mat_khau], [ho_va_ten], [cmnd], [trang_thai]) VALUES (N'100', N'49', N'Zay5jQ9Q9n', N'wyj7Sbqlmn', N'lXVyl7Woxr', N'brAcY1HLFd', N'Atya0zgOFl', N'1')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for tai_khoan_quyen_han
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tai_khoan_quyen_han]') AND type IN ('U'))
	DROP TABLE [dbo].[tai_khoan_quyen_han]
GO

CREATE TABLE [dbo].[tai_khoan_quyen_han] (
  [id] int  NOT NULL,
  [tai_khoan_id] int  NULL,
  [quyen_han_id] int  NULL,
  [ma] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [mo_ta] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [trang_thai] int  NULL
)
GO

ALTER TABLE [dbo].[tai_khoan_quyen_han] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tai_khoan_quyen_han
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'1', N'97', N'4', N'c34BfQlZmA', N'vbV3yUAuJ4', N'1')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'2', N'77', N'39', N'n30hu1K44g', N'GDddSscl9S', N'1')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'3', N'85', N'81', N'H9EItuM9rk', N'FwHsIyBlRF', N'1')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'4', N'96', N'32', N'uDiWgEUavO', N'drxTjUjn0Q', N'1')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'5', N'39', N'14', N'8ho50E5ji6', N'8jLR4AL4oU', N'1')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'6', N'57', N'28', N'BfNnZr4SxR', N'pIo5JUNv0Y', N'1')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'7', N'81', N'12', N'AVXqOoeLur', N'G8w722By0q', N'1')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'8', N'94', N'59', N'V1AHaDvJp1', N'vhnfImRdUC', N'1')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'9', N'52', N'38', N'mVCvD7BkpK', N'ohuAu5zxpy', N'1')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'10', N'51', N'86', N'CGQYh7Plor', N'wAecOZdDnY', N'1')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'11', N'35', N'31', N'NCBIdM4Qwo', N'aCsPsgFFNE', N'1')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'12', N'92', N'44', N'MQ1xjB0ePa', N'54QUi7kmXL', N'1')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'13', N'95', N'38', N'dRjnCZ27dS', N'2Wb2aJ13ty', N'1')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'14', N'58', N'82', N'Y2nFPTyAyI', N'rsfvNAcbnL', N'1')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'15', N'98', N'93', N'lVpx6n7zzi', N'tK22dO3gar', N'1')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'16', N'72', N'75', N'byhdEzQD2C', N'6K8Pit5deu', N'1')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'17', N'46', N'21', N'zQbznWiHLJ', N'M4Nl0t9MDp', N'1')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'18', N'39', N'34', N'Ih1zkZ2vZe', N'5dymozNqMs', N'1')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'19', N'68', N'74', N'W5RnZGDShP', N'bsgRijcZzg', N'1')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'20', N'57', N'95', N'kZV1dHXr4O', N'JqjUJ0M0kw', N'1')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'21', N'10', N'64', N'6SwkgbDTqa', N'ikqi7FlUUe', N'1')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'22', N'20', N'29', N'uYH8qfOUGA', N'UnfwZJU6Nt', N'1')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'23', N'57', N'4', N'JBLh1CysHH', N'7i729RvKgQ', N'1')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'24', N'66', N'62', N'00azJXVNc8', N'ykyqFjRPoX', N'1')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'25', N'64', N'92', N'mgEmWLaD5H', N'dw5TDX4Htv', N'1')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'26', N'8', N'58', N'EmAQN318Eo', N'i8jZnIVnSz', N'1')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'27', N'36', N'29', N'Z2IoxsD0Zi', N'q2jPWthoQX', N'1')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'28', N'42', N'66', N'gdmZqC7smK', N'mZzN93HFKw', N'1')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'29', N'100', N'20', N'ppWTlIEDom', N'pbHasxqFi7', N'1')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'30', N'26', N'9', N'vijiJ5WK07', N'zc0zFpfz7i', N'1')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'31', N'38', N'58', N'POAQPufE7S', N'wtsWL4vIR9', N'2')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'32', N'31', N'13', N'AuIBDoFnXQ', N'Gnonr3oAKJ', N'2')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'33', N'23', N'83', N'mWaTETDQcR', N'fn2doHadn5', N'2')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'34', N'66', N'82', N'Cadklr0WdV', N'dI7gdO6vIu', N'2')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'35', N'75', N'100', N'dWtxK46LPr', N'bG5R7yozhw', N'2')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'36', N'46', N'90', N'unYgU3qjfK', N'zX3sHVY8WC', N'2')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'37', N'73', N'57', N'13a3j7t8CQ', N'ze09sNC8Q4', N'2')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'38', N'94', N'9', N'IA1K18nyCe', N'8YEK1PBo5i', N'2')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'39', N'99', N'31', N'cOSbDdCD8C', N'JJ2mWO0H0M', N'2')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'40', N'52', N'47', N'GFqGwj7K2D', N'Lz6bWSXt1d', N'2')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'41', N'49', N'13', N'ML16hLt0vb', N'4YP7YbhQ8j', N'2')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'42', N'24', N'69', N'Vc4m7eKQOR', N'zZoT6hywnB', N'2')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'43', N'2', N'9', N'zRVULhODl1', N'MYHI6Esby3', N'2')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'44', N'87', N'79', N'V4wHiwSArn', N'LNRmXRis5V', N'2')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'45', N'23', N'67', N'Ox3qhhLV4J', N'oOEiTSeZiX', N'2')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'46', N'8', N'27', N'wL2FqATebJ', N'qlHp72DovS', N'2')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'47', N'10', N'24', N'TGvnMzps59', N'pE7SL7svBQ', N'2')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'48', N'2', N'63', N'bD8JImXl61', N'KiuAx14B7q', N'2')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'49', N'87', N'35', N'Eoz4SOWkob', N'7a9qPOM5Ur', N'2')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'50', N'30', N'63', N'2bNOTFhSgn', N'Vq5R9PTUsA', N'2')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'51', N'23', N'12', N'CApbUSWMtJ', N'vDFfG3O7EA', N'3')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'52', N'82', N'35', N'IFBDNqjIIL', N'YGnLhl66Xz', N'3')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'53', N'72', N'33', N'enl0QsOMoG', N'mejWpbJVYv', N'3')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'54', N'79', N'23', N'A6pldgJnHT', N'1bKGaI5zmb', N'3')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'55', N'95', N'20', N'qgnwMTYTPx', N'prdt6yFs0b', N'3')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'56', N'26', N'83', N'J6Ud16AoZR', N'g9wykacvcv', N'3')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'57', N'59', N'47', N'eSySiCMLxN', N'DNJi2DglrP', N'3')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'58', N'22', N'56', N'vgQqjfwvBu', N'XqSvNK3KDY', N'3')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'59', N'69', N'39', N'YQbM1AgBFl', N'B40xljUvXP', N'3')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'60', N'15', N'65', N'T9ONPxTEsn', N'h618Z7colx', N'3')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'61', N'37', N'42', N'4mqm137xed', N'12ZVnZldra', N'3')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'62', N'18', N'71', N'tNNRSXKM5D', N'vL6XqpDWV0', N'3')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'63', N'35', N'20', N'UcaXSnAuAW', N'U0gxqAxPH2', N'3')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'64', N'5', N'44', N'JHPNyvLC5K', N'RIFe4Kr9Us', N'3')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'65', N'8', N'73', N'weFpcryW1Z', N'CplEiVkOAN', N'3')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'66', N'89', N'67', N'mxDXirxMbY', N's3uIiMgWhV', N'3')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'67', N'43', N'60', N'kiSW6AFzY4', N'Qv5TqNrMFf', N'3')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'68', N'12', N'30', N'XBNnHeMy8n', N'pSSTAoLpRE', N'3')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'69', N'63', N'78', N'mRWQXVCYEx', N'on4I2zv7Xm', N'3')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'70', N'62', N'68', N'PTEv8Ererh', N'7QWHMudvM7', N'3')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'71', N'89', N'77', N'HSDr2e5CL4', N'RyqC6uSkn0', N'3')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'72', N'84', N'65', N'hbtCqc8p4d', N'K39qtbE4KP', N'3')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'73', N'21', N'27', N'4y2TkkkCWP', N'UbMSE98Vy1', N'3')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'74', N'25', N'3', N'xSQu9KkbO6', N'TaJ2xmlfDl', N'3')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'75', N'48', N'70', N'FgWRvzPUNO', N'a9vMAaaBbu', N'3')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'76', N'67', N'75', N'T1zAlYL70O', N'd86vBd4GVm', N'3')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'77', N'100', N'29', N'quaqr55QcS', N'TZdvNXL3y6', N'3')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'78', N'82', N'68', N'OP29Wecvst', N'kW9OdOQnlZ', N'3')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'79', N'43', N'17', N'I8NMnWyRvg', N'X41R27lV0F', N'3')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'80', N'26', N'3', N'wjELmDVM7W', N'DUA2m3UBaq', N'3')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'81', N'16', N'59', N'3TKDQACCa5', N'W3bxRkYS3E', N'4')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'82', N'82', N'61', N'wNBuCBdNyF', N'DnNq7fXmxf', N'4')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'83', N'1', N'37', N'I5ad5QTWov', N'zXZ1qFNo2A', N'4')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'84', N'85', N'99', N'AHWeWEVOoO', N'iPwCCL03GB', N'4')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'85', N'15', N'33', N'A8PncdwPTB', N'dIglVTk9GR', N'4')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'86', N'60', N'93', N'SS2XWCp1dr', N'FAm3kEyUf4', N'4')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'87', N'92', N'66', N'f7z44ZcVaH', N'TbvVqNXoDh', N'4')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'88', N'58', N'52', N'HtzRPfFM79', N'zph7SzI30V', N'4')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'89', N'78', N'96', N'KxHx5SRh0t', N'yfuIUbwn55', N'4')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'90', N'63', N'65', N'LfPK14HdaK', N'CDoOyoe2nA', N'4')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'91', N'18', N'91', N'UqdJLnKjxq', N'2jP5HjuDaB', N'4')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'92', N'66', N'69', N'MM0iteLDBe', N'EJL6cTVl2o', N'4')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'93', N'79', N'29', N'neeipXzNVR', N'lhaRnodAiQ', N'4')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'94', N'57', N'51', N'Yv0NXDoojA', N'09HKzaz9LE', N'4')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'95', N'5', N'24', N'odECcctUMa', N'1EPQLHOaR6', N'4')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'96', N'59', N'76', N'nOuvwYD8Fm', N'fF1y8UPUW0', N'4')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'97', N'59', N'41', N'AGbJMcPIq5', N'N8UVu742u3', N'4')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'98', N'56', N'98', N'5VTrQIkIbt', N'2N1V5dceeo', N'4')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'99', N'93', N'79', N'G2GmhdWYrl', N'UicmllKFae', N'4')
GO

INSERT INTO [dbo].[tai_khoan_quyen_han] ([id], [tai_khoan_id], [quyen_han_id], [ma], [mo_ta], [trang_thai]) VALUES (N'100', N'9', N'33', N'dfzLdFiv9g', N'qpiHxVa8cY', N'4')
GO

COMMIT
GO


-- ----------------------------
-- Auto increment value for chu_nha
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[chu_nha]', RESEED, 50)
GO


-- ----------------------------
-- Primary Key structure for table chu_nha
-- ----------------------------
ALTER TABLE [dbo].[chu_nha] ADD CONSTRAINT [PK__ChuNha__3214EC2700192F51] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for chuc_vu
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[chuc_vu]', RESEED, 50)
GO


-- ----------------------------
-- Primary Key structure for table chuc_vu
-- ----------------------------
ALTER TABLE [dbo].[chuc_vu] ADD CONSTRAINT [PK__ChucVu__3214EC272CFCB6BF] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for giao_dich
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[giao_dich]', RESEED, 50)
GO


-- ----------------------------
-- Primary Key structure for table giao_dich
-- ----------------------------
ALTER TABLE [dbo].[giao_dich] ADD CONSTRAINT [PK__GiaoDich__3214EC27924B999D] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for hoa_don
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[hoa_don]', RESEED, 51)
GO


-- ----------------------------
-- Primary Key structure for table hoa_don
-- ----------------------------
ALTER TABLE [dbo].[hoa_don] ADD CONSTRAINT [PK__HoaDon__3214EC07C46EE74B] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for hoa_don_chi_tiet
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[hoa_don_chi_tiet]', RESEED, 50)
GO


-- ----------------------------
-- Primary Key structure for table hoa_don_chi_tiet
-- ----------------------------
ALTER TABLE [dbo].[hoa_don_chi_tiet] ADD CONSTRAINT [PK__HoaDonCh__3214EC07C188AB24] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table loai_phieu_giam_gia
-- ----------------------------
ALTER TABLE [dbo].[loai_phieu_giam_gia] ADD CONSTRAINT [PK__LoaiPhie__3213E83F17D97A0E] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table loai_phong_ban
-- ----------------------------
ALTER TABLE [dbo].[loai_phong_ban] ADD CONSTRAINT [PK__loai_pho__3213E83F643813A6] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for loai_sp
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[loai_sp]', RESEED, 50)
GO


-- ----------------------------
-- Primary Key structure for table loai_sp
-- ----------------------------
ALTER TABLE [dbo].[loai_sp] ADD CONSTRAINT [PK__LoaiSP__3214EC274DB25A91] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for nha
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[nha]', RESEED, 50)
GO


-- ----------------------------
-- Primary Key structure for table nha
-- ----------------------------
ALTER TABLE [dbo].[nha] ADD CONSTRAINT [PK__Nha__3214EC278FB35500] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for nhan_vien
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[nhan_vien]', RESEED, 50)
GO


-- ----------------------------
-- Primary Key structure for table nhan_vien
-- ----------------------------
ALTER TABLE [dbo].[nhan_vien] ADD CONSTRAINT [PK__NhanVien__3214EC2775F1E245] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table phieu_giam_gia
-- ----------------------------
ALTER TABLE [dbo].[phieu_giam_gia] ADD CONSTRAINT [PK__phieu_gi__3213E83F8260BFD5] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table phong_ban
-- ----------------------------
ALTER TABLE [dbo].[phong_ban] ADD CONSTRAINT [PK__phong_ba__CDEC17C033506AB7] PRIMARY KEY CLUSTERED ([id] DESC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table quyen_han
-- ----------------------------
ALTER TABLE [dbo].[quyen_han] ADD CONSTRAINT [PK__quyen_ha__3213E83F244F3D8A] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for san_pham
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[san_pham]', RESEED, 50)
GO


-- ----------------------------
-- Primary Key structure for table san_pham
-- ----------------------------
ALTER TABLE [dbo].[san_pham] ADD CONSTRAINT [PK__SanPham__3214EC270E2E04BA] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tai_khoan
-- ----------------------------
ALTER TABLE [dbo].[tai_khoan] ADD CONSTRAINT [PK__tai_khoa__3213E83F7498E8E2] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tai_khoan_quyen_han
-- ----------------------------
ALTER TABLE [dbo].[tai_khoan_quyen_han] ADD CONSTRAINT [PK__tai_khoa__3213E83F9C03C37E] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table giao_dich
-- ----------------------------
ALTER TABLE [dbo].[giao_dich] ADD CONSTRAINT [giao_dich_nha_FK] FOREIGN KEY ([nha_id]) REFERENCES [dbo].[nha] ([id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table hoa_don
-- ----------------------------
ALTER TABLE [dbo].[hoa_don] ADD CONSTRAINT [hoa_don_nhan_vien_FK] FOREIGN KEY ([id_nv]) REFERENCES [dbo].[nhan_vien] ([id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table hoa_don_chi_tiet
-- ----------------------------
ALTER TABLE [dbo].[hoa_don_chi_tiet] ADD CONSTRAINT [hoa_don_chi_tiet_hoa_don_FK] FOREIGN KEY ([id_hoa_don]) REFERENCES [dbo].[hoa_don] ([id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[hoa_don_chi_tiet] ADD CONSTRAINT [hoa_don_chi_tiet_san_pham_FK] FOREIGN KEY ([id_sp]) REFERENCES [dbo].[san_pham] ([id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table nha
-- ----------------------------
ALTER TABLE [dbo].[nha] ADD CONSTRAINT [nha_chu_nha_FK] FOREIGN KEY ([chu_nha_id]) REFERENCES [dbo].[chu_nha] ([id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table nhan_vien
-- ----------------------------
ALTER TABLE [dbo].[nhan_vien] ADD CONSTRAINT [nhan_vien_chuc_vu_FK] FOREIGN KEY ([id_cv]) REFERENCES [dbo].[chuc_vu] ([id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table phieu_giam_gia
-- ----------------------------
ALTER TABLE [dbo].[phieu_giam_gia] ADD CONSTRAINT [phieu_giam_gia_loai_phieu_giam_gia_FK] FOREIGN KEY ([loai_phieu_id]) REFERENCES [dbo].[loai_phieu_giam_gia] ([id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table phong_ban
-- ----------------------------
ALTER TABLE [dbo].[phong_ban] ADD CONSTRAINT [phong_ban_id_fk1] FOREIGN KEY ([loai_phong_ban_id]) REFERENCES [dbo].[loai_phong_ban] ([id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table san_pham
-- ----------------------------
ALTER TABLE [dbo].[san_pham] ADD CONSTRAINT [san_pham_loai_sp_FK] FOREIGN KEY ([id_loai_sp]) REFERENCES [dbo].[loai_sp] ([id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tai_khoan
-- ----------------------------
ALTER TABLE [dbo].[tai_khoan] ADD CONSTRAINT [tai_khoan_fk] FOREIGN KEY ([chuc_vu_id]) REFERENCES [dbo].[chuc_vu] ([id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table tai_khoan_quyen_han
-- ----------------------------
ALTER TABLE [dbo].[tai_khoan_quyen_han] ADD CONSTRAINT [tai_khoan_quyen_han_fk1] FOREIGN KEY ([tai_khoan_id]) REFERENCES [dbo].[tai_khoan] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[tai_khoan_quyen_han] ADD CONSTRAINT [tai_khoan_quyen_han_fk2] FOREIGN KEY ([quyen_han_id]) REFERENCES [dbo].[quyen_han] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

PTPM_FINALLY_SOF3012.sql
Đang hiển thị PTPM_FINALLY_SOF3012.sql.