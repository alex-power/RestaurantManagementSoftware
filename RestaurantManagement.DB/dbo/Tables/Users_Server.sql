CREATE TABLE [dbo].[Users_Server] (
    [NumTables] INT NOT NULL,
    [Id]        INT NOT NULL,
    CONSTRAINT [PK_Users_Server] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Server_inherits_Employee] FOREIGN KEY ([Id]) REFERENCES [dbo].[Users_Employee] ([Id]) ON DELETE CASCADE
);

