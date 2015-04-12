-- Creating table 'MenuItemSet'
CREATE TABLE [dbo].[MenuItemSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [SectionId] int  NOT NULL
);
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
-- Creating primary key on [Id] in table 'MenuItemSet'
ALTER TABLE [dbo].[MenuItemSet]
ADD CONSTRAINT [PK_MenuItemSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO
-- Creating non-clustered index for FOREIGN KEY 'FK_SectionMenuItem'
CREATE INDEX [IX_FK_SectionMenuItem]
ON [dbo].[MenuItemSet]
    ([SectionId]);