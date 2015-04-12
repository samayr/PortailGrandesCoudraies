﻿/*
Script de déploiement pour LesGrandesCoudraies

Ce code a été généré par un outil.
La modification de ce fichier peut provoquer un comportement incorrect et sera perdue si
le code est régénéré.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "LesGrandesCoudraies"
:setvar DefaultFilePrefix "LesGrandesCoudraies"
:setvar DefaultDataPath ""
:setvar DefaultLogPath ""

GO
:on error exit
GO
/*
Détectez le mode SQLCMD et désactivez l'exécution du script si le mode SQLCMD n'est pas pris en charge.
Pour réactiver le script une fois le mode SQLCMD activé, exécutez ce qui suit :
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'Le mode SQLCMD doit être activé de manière à pouvoir exécuter ce script.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
PRINT N'Création de [dbo].[ArticleSet]...';


GO
SET ANSI_NULLS, QUOTED_IDENTIFIER OFF;


GO
CREATE TABLE [dbo].[ArticleSet] (
    [Id]         INT IDENTITY (1, 1) NOT NULL,
    [MenuItemId] INT NOT NULL,
    CONSTRAINT [PK_ArticleSet] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
SET ANSI_NULLS, QUOTED_IDENTIFIER ON;


GO
PRINT N'Création de [dbo].[ArticleSet].[IX_FK_MenuItemArticle]...';


GO
CREATE NONCLUSTERED INDEX [IX_FK_MenuItemArticle]
    ON [dbo].[ArticleSet]([MenuItemId] ASC);


GO
PRINT N'Création de [dbo].[MenuItemSet]...';


GO
SET ANSI_NULLS, QUOTED_IDENTIFIER OFF;


GO
CREATE TABLE [dbo].[MenuItemSet] (
    [Id]        INT IDENTITY (1, 1) NOT NULL,
    [SectionId] INT NOT NULL,
    CONSTRAINT [PK_MenuItemSet] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
SET ANSI_NULLS, QUOTED_IDENTIFIER ON;


GO
PRINT N'Création de [dbo].[MenuItemSet].[IX_FK_SectionMenuItem]...';


GO
CREATE NONCLUSTERED INDEX [IX_FK_SectionMenuItem]
    ON [dbo].[MenuItemSet]([SectionId] ASC);


GO
PRINT N'Création de [dbo].[SectionSet]...';


GO
SET ANSI_NULLS, QUOTED_IDENTIFIER OFF;


GO
CREATE TABLE [dbo].[SectionSet] (
    [Id]   INT            IDENTITY (1, 1) NOT NULL,
    [Name] NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_SectionSet] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
SET ANSI_NULLS, QUOTED_IDENTIFIER ON;


GO
PRINT N'Création de FK_MenuItemArticle...';


GO
ALTER TABLE [dbo].[ArticleSet] WITH NOCHECK
    ADD CONSTRAINT [FK_MenuItemArticle] FOREIGN KEY ([MenuItemId]) REFERENCES [dbo].[MenuItemSet] ([Id]);


GO
PRINT N'Création de FK_SectionMenuItem...';


GO
ALTER TABLE [dbo].[MenuItemSet] WITH NOCHECK
    ADD CONSTRAINT [FK_SectionMenuItem] FOREIGN KEY ([SectionId]) REFERENCES [dbo].[SectionSet] ([Id]);


GO
