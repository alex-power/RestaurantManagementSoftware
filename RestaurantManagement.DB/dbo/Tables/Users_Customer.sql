CREATE TABLE [dbo].[Users_Customer] (
    [Id] INT NOT NULL,
    CONSTRAINT [PK_Users_Customer] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Customer_inherits_User] FOREIGN KEY ([Id]) REFERENCES [dbo].[Users] ([Id]) ON DELETE CASCADE
);

