-- �إ߸�Ʈw
IF DB_ID('ForProject') IS NULL
    CREATE DATABASE [ForProject];
GO

USE [ForProject];
GO

-- �R���ª� (�Y�w�s�b)
IF OBJECT_ID('dbo.Projects', 'U') IS NOT NULL
    DROP TABLE dbo.Projects;
IF OBJECT_ID('dbo.Contacts', 'U') IS NOT NULL
    DROP TABLE dbo.Contacts;
GO

-- �إ� Projects ��
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

-- �إ� Contacts ��
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

-- ���J�d�Ҹ�ơ]Projects�^
INSERT INTO [dbo].[Projects] (Title, Description, ImageUrl, Technical, CreateDate)
VALUES
('MarryWanna', N'�����Ӫ�(�j��)�P�ʵ��X���i��ʡC', '/images/marywanna.jpg', N'Unity, Kinect V2�BTouchDesigner, Arduino', '2025-07-17 15:55:52.553'),
('ASP.NET Core MVC Profile', N'�������A�i�ܭӤH�۶ǡB�@�~���B��Ʈw�걵������ MVC �[�c', '/images/WebMVC.jpg', N'ASP.NET Core MVC, SQL Server', '2025-07-18 16:28:34.210');
GO
