CREATE TABLE [dbo].[Orders] (
    [Id]         INT            IDENTITY (1, 1) NOT NULL,
    [TotalPrice] NVARCHAR (MAX) NULL,
    [Tip]        NVARCHAR (MAX) NULL,
    [State]      NVARCHAR (MAX) NOT NULL,
	[TableId]	 INT NOT NULL,
    CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED ([Id] ASC),
	CONSTRAINT [FK_Tables] FOREIGN KEY ([TableId]) REFERENCES [dbo].[Tables] (Id)
);

GO
CREATE NONCLUSTERED INDEX [IX_FK_OrdersTable]
    ON [dbo].[Orders]([TableId] ASC);
