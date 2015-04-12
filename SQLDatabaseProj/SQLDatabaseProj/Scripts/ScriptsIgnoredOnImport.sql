
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
-- Script has ended
-- --------------------------------------------------

GO
