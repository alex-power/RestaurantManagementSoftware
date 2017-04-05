CREATE TABLE [dbo].[Tables] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [Seats]   INT            NOT NULL,
    [TableStatus] NVARCHAR (MAX) NOT NULL,
    [Server_Id]   INT            NULL,
    CONSTRAINT [PK_Tables] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ServerTable] FOREIGN KEY ([Server_Id]) REFERENCES [dbo].[Users_Server] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_FK_ServerTable]
    ON [dbo].[Tables]([Server_Id] ASC);

