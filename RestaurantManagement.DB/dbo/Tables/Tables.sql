CREATE TABLE [dbo].[Tables] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [NumPeople]   INT            NOT NULL,
    [TableStatus] NVARCHAR (MAX) NOT NULL,
    [Order_Id]    INT            NOT NULL,
    [Server_Id]   INT            NOT NULL,
    CONSTRAINT [PK_Tables] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_OrderTable] FOREIGN KEY ([Order_Id]) REFERENCES [dbo].[Orders] ([Id]),
    CONSTRAINT [FK_ServerTable] FOREIGN KEY ([Server_Id]) REFERENCES [dbo].[Users_Server] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_FK_OrderTable]
    ON [dbo].[Tables]([Order_Id] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_FK_ServerTable]
    ON [dbo].[Tables]([Server_Id] ASC);

