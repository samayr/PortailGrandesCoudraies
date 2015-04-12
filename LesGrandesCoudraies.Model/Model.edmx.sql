
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/01/2014 15:17:57
-- Generated from EDMX file: D:\Projets\Tfs\LesGrandesCoudraies\LesGrandesCoudraies.Model\Model.edmx
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


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [Email] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Roles'
CREATE TABLE [dbo].[Roles] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Topics'
CREATE TABLE [dbo].[Topics] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Contributions'
CREATE TABLE [dbo].[Contributions] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Subject] nvarchar(200)  NOT NULL,
    [Content] nvarchar(max)  NOT NULL,
    [TopicId] int  NOT NULL
);
GO

-- Creating table 'Messages'
CREATE TABLE [dbo].[Messages] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ContributionId] int  NOT NULL,
    [UserId] int  NOT NULL,
    [Content] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Votes'
CREATE TABLE [dbo].[Votes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ContributionId] int  NOT NULL,
    [UserId] int  NOT NULL,
    [Rate] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'UserRole'
CREATE TABLE [dbo].[UserRole] (
    [User_Id] int  NOT NULL,
    [Role_Id] int  NOT NULL
);
GO

-- Creating table 'TopicRole'
CREATE TABLE [dbo].[TopicRole] (
    [Topic_Id] int  NOT NULL,
    [Role_Id] int  NOT NULL
);
GO

-- Creating table 'ContributionRole'
CREATE TABLE [dbo].[ContributionRole] (
    [Contribution_Id] int  NOT NULL,
    [Role_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Roles'
ALTER TABLE [dbo].[Roles]
ADD CONSTRAINT [PK_Roles]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Topics'
ALTER TABLE [dbo].[Topics]
ADD CONSTRAINT [PK_Topics]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Contributions'
ALTER TABLE [dbo].[Contributions]
ADD CONSTRAINT [PK_Contributions]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Messages'
ALTER TABLE [dbo].[Messages]
ADD CONSTRAINT [PK_Messages]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Votes'
ALTER TABLE [dbo].[Votes]
ADD CONSTRAINT [PK_Votes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [User_Id], [Role_Id] in table 'UserRole'
ALTER TABLE [dbo].[UserRole]
ADD CONSTRAINT [PK_UserRole]
    PRIMARY KEY CLUSTERED ([User_Id], [Role_Id] ASC);
GO

-- Creating primary key on [Topic_Id], [Role_Id] in table 'TopicRole'
ALTER TABLE [dbo].[TopicRole]
ADD CONSTRAINT [PK_TopicRole]
    PRIMARY KEY CLUSTERED ([Topic_Id], [Role_Id] ASC);
GO

-- Creating primary key on [Contribution_Id], [Role_Id] in table 'ContributionRole'
ALTER TABLE [dbo].[ContributionRole]
ADD CONSTRAINT [PK_ContributionRole]
    PRIMARY KEY CLUSTERED ([Contribution_Id], [Role_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [User_Id] in table 'UserRole'
ALTER TABLE [dbo].[UserRole]
ADD CONSTRAINT [FK_UserRole_User]
    FOREIGN KEY ([User_Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Role_Id] in table 'UserRole'
ALTER TABLE [dbo].[UserRole]
ADD CONSTRAINT [FK_UserRole_Role]
    FOREIGN KEY ([Role_Id])
    REFERENCES [dbo].[Roles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserRole_Role'
CREATE INDEX [IX_FK_UserRole_Role]
ON [dbo].[UserRole]
    ([Role_Id]);
GO

-- Creating foreign key on [Topic_Id] in table 'TopicRole'
ALTER TABLE [dbo].[TopicRole]
ADD CONSTRAINT [FK_TopicRole_Topic]
    FOREIGN KEY ([Topic_Id])
    REFERENCES [dbo].[Topics]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Role_Id] in table 'TopicRole'
ALTER TABLE [dbo].[TopicRole]
ADD CONSTRAINT [FK_TopicRole_Role]
    FOREIGN KEY ([Role_Id])
    REFERENCES [dbo].[Roles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_TopicRole_Role'
CREATE INDEX [IX_FK_TopicRole_Role]
ON [dbo].[TopicRole]
    ([Role_Id]);
GO

-- Creating foreign key on [TopicId] in table 'Contributions'
ALTER TABLE [dbo].[Contributions]
ADD CONSTRAINT [FK_ContributionTopic]
    FOREIGN KEY ([TopicId])
    REFERENCES [dbo].[Topics]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ContributionTopic'
CREATE INDEX [IX_FK_ContributionTopic]
ON [dbo].[Contributions]
    ([TopicId]);
GO

-- Creating foreign key on [Contribution_Id] in table 'ContributionRole'
ALTER TABLE [dbo].[ContributionRole]
ADD CONSTRAINT [FK_ContributionRole_Contribution]
    FOREIGN KEY ([Contribution_Id])
    REFERENCES [dbo].[Contributions]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Role_Id] in table 'ContributionRole'
ALTER TABLE [dbo].[ContributionRole]
ADD CONSTRAINT [FK_ContributionRole_Role]
    FOREIGN KEY ([Role_Id])
    REFERENCES [dbo].[Roles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ContributionRole_Role'
CREATE INDEX [IX_FK_ContributionRole_Role]
ON [dbo].[ContributionRole]
    ([Role_Id]);
GO

-- Creating foreign key on [ContributionId] in table 'Votes'
ALTER TABLE [dbo].[Votes]
ADD CONSTRAINT [FK_VoteContribution]
    FOREIGN KEY ([ContributionId])
    REFERENCES [dbo].[Contributions]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_VoteContribution'
CREATE INDEX [IX_FK_VoteContribution]
ON [dbo].[Votes]
    ([ContributionId]);
GO

-- Creating foreign key on [UserId] in table 'Votes'
ALTER TABLE [dbo].[Votes]
ADD CONSTRAINT [FK_VoteUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_VoteUser'
CREATE INDEX [IX_FK_VoteUser]
ON [dbo].[Votes]
    ([UserId]);
GO

-- Creating foreign key on [ContributionId] in table 'Messages'
ALTER TABLE [dbo].[Messages]
ADD CONSTRAINT [FK_ContributionMessage]
    FOREIGN KEY ([ContributionId])
    REFERENCES [dbo].[Contributions]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ContributionMessage'
CREATE INDEX [IX_FK_ContributionMessage]
ON [dbo].[Messages]
    ([ContributionId]);
GO

-- Creating foreign key on [UserId] in table 'Messages'
ALTER TABLE [dbo].[Messages]
ADD CONSTRAINT [FK_UserMessage]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserMessage'
CREATE INDEX [IX_FK_UserMessage]
ON [dbo].[Messages]
    ([UserId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------