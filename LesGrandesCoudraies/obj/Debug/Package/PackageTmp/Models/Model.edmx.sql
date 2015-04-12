
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 07/26/2014 22:08:32
-- Generated from EDMX file: D:\Projets\LesGrandesCoudraies\LesGrandesCoudraies\Models\Model.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [LesGrandesCoudraies];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_SectionMenuItem]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MenuItemSet] DROP CONSTRAINT [FK_SectionMenuItem];
GO
IF OBJECT_ID(N'[dbo].[FK_MenuItemArticle]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ArticleSet] DROP CONSTRAINT [FK_MenuItemArticle];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[SectionSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SectionSet];
GO
IF OBJECT_ID(N'[dbo].[MenuItemSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MenuItemSet];
GO
IF OBJECT_ID(N'[dbo].[ArticleSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ArticleSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'SectionSet'
CREATE TABLE [dbo].[SectionSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'MenuItemSet'
CREATE TABLE [dbo].[MenuItemSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [SectionId] int  NOT NULL
);
GO

-- Creating table 'ArticleSet'
CREATE TABLE [dbo].[ArticleSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [MenuItemId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'SectionSet'
ALTER TABLE [dbo].[SectionSet]
ADD CONSTRAINT [PK_SectionSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'MenuItemSet'
ALTER TABLE [dbo].[MenuItemSet]
ADD CONSTRAINT [PK_MenuItemSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ArticleSet'
ALTER TABLE [dbo].[ArticleSet]
ADD CONSTRAINT [PK_ArticleSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [SectionId] in table 'MenuItemSet'
ALTER TABLE [dbo].[MenuItemSet]
ADD CONSTRAINT [FK_SectionMenuItem]
    FOREIGN KEY ([SectionId])
    REFERENCES [dbo].[SectionSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SectionMenuItem'
CREATE INDEX [IX_FK_SectionMenuItem]
ON [dbo].[MenuItemSet]
    ([SectionId]);
GO

-- Creating foreign key on [MenuItemId] in table 'ArticleSet'
ALTER TABLE [dbo].[ArticleSet]
ADD CONSTRAINT [FK_MenuItemArticle]
    FOREIGN KEY ([MenuItemId])
    REFERENCES [dbo].[MenuItemSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MenuItemArticle'
CREATE INDEX [IX_FK_MenuItemArticle]
ON [dbo].[ArticleSet]
    ([MenuItemId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------