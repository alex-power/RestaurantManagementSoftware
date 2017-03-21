CREATE TABLE [dbo].[Reviews] (
    [Id]           INT            IDENTITY (1, 1) NOT NULL,
    [Text]         NVARCHAR (MAX) NOT NULL,
    [DateOfVisit]  DATETIME       NOT NULL,
    [DateOfPost]   DATETIME       NOT NULL,
    [Rating]       INT            NOT NULL,
    [Customers_Id] INT            NOT NULL,
    CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ReviewCustomer] FOREIGN KEY ([Customers_Id]) REFERENCES [dbo].[Users_Customer] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_FK_ReviewCustomer]
    ON [dbo].[Reviews]([Customers_Id] ASC);

