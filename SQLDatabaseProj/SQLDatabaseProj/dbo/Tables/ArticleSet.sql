-- Creating table 'ArticleSet'
CREATE TABLE [dbo].[ArticleSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [MenuItemId] int  NOT NULL
);
GO
-- Creating foreign key on [MenuItemId] in table 'ArticleSet'
ALTER TABLE [dbo].[ArticleSet]
ADD CONSTRAINT [FK_MenuItemArticle]
    FOREIGN KEY ([MenuItemId])
    REFERENCES [dbo].[MenuItemSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO
-- Creating primary key on [Id] in table 'ArticleSet'
ALTER TABLE [dbo].[ArticleSet]
ADD CONSTRAINT [PK_ArticleSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO
-- Creating non-clustered index for FOREIGN KEY 'FK_MenuItemArticle'
CREATE INDEX [IX_FK_MenuItemArticle]
ON [dbo].[ArticleSet]
    ([MenuItemId]);