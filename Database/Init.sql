-- 建立資料庫
IF DB_ID('ForProject') IS NULL
    CREATE DATABASE [ForProject];
GO

USE [ForProject];
GO

-- 刪除舊表 (若已存在)
IF OBJECT_ID('dbo.Projects', 'U') IS NOT NULL
    DROP TABLE dbo.Projects;
IF OBJECT_ID('dbo.Contacts', 'U') IS NOT NULL
    DROP TABLE dbo.Contacts;
GO

-- 建立 Projects 表
CREATE TABLE [dbo].[Projects](
    [Id] [int] IDENTITY(1,1) NOT NULL,
      NOT NULL,
    [Description] [nvarchar](max) NULL,
      NULL,
      NOT NULL,
    [CreateDate] [datetime] NULL,
    CONSTRAINT [PK_Projects] PRIMARY KEY CLUSTERED ([Id] ASC)
);
ALTER TABLE [dbo].[Projects] 
    ADD CONSTRAINT [DF_Projects_CreateDate] DEFAULT (GETDATE()) FOR [CreateDate];
GO

-- 建立 Contacts 表
CREATE TABLE [dbo].[Contacts](
      NOT NULL,
      NULL,
      NULL,
    [Message] [nvarchar](max) NULL,
    [SubmitDate] [datetime] NULL,
    CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED ([Id] ASC)
);
ALTER TABLE [dbo].[Contacts] 
    ADD CONSTRAINT [DF_Contacts_SubmitDate] DEFAULT (GETDATE()) FOR [SubmitDate];
GO

-- 插入範例資料（Projects）
INSERT INTO [dbo].[Projects] (Title, Description, ImageUrl, Technical, CreateDate)
VALUES
('MarryWanna', N'探索植物(大麻)與性結合的可能性。', '/images/marywanna.jpg', N'Unity, Kinect V2、TouchDesigner, Arduino', '2025-07-17 15:55:52.553'),
('ASP.NET Core MVC Profile', N'本網站，展示個人自傳、作品集、資料庫串接等完整 MVC 架構', '/images/WebMVC.jpg', N'ASP.NET Core MVC, SQL Server', '2025-07-18 16:28:34.210');
GO
