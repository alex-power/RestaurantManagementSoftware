CREATE TABLE [dbo].[Users_Kitchen] (
    [Role] NVARCHAR (MAX) NULL,
    [Id]   INT            NOT NULL,
    CONSTRAINT [PK_Users_Kitchen] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Kitchen_inherits_Employee] FOREIGN KEY ([Id]) REFERENCES [dbo].[Users_Employee] ([Id]) ON DELETE CASCADE
);

