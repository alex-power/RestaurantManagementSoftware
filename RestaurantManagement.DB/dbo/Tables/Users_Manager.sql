CREATE TABLE [dbo].[Users_Manager] (
    [Id] INT NOT NULL,
    CONSTRAINT [PK_Users_Manager] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Manager_inherits_Employee] FOREIGN KEY ([Id]) REFERENCES [dbo].[Users_Employee] ([Id]) ON DELETE CASCADE
);

