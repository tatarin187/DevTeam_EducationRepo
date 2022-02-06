﻿CREATE TABLE [dbo].[User] (
    [Id]        INT           IDENTITY (1, 1) NOT NULL,
    [FirstName] NVARCHAR (50) NOT NULL,
    [LastName]  NVARCHAR (50) NOT NULL,
    [CreatedAt] DATETIME2 (7) NOT NULL,
    [IsDeleted] BIT           CONSTRAINT [DF_User_IsDeleted] DEFAULT ((0)) NOT NULL,
    [RoleId] INT NOT NULL, 
    CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED ([Id] ASC), 
    CONSTRAINT [FK_User_UserRole] FOREIGN KEY (RoleId) REFERENCES [dbo].[UserRole]([Id])
);

