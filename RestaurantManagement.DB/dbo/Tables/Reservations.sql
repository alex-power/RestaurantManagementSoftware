CREATE TABLE [dbo].[Reservations] (
    [Id]           INT            IDENTITY (1, 1) NOT NULL,
    [DateTime]     DATETIME       NOT NULL,
    [Note]         NVARCHAR (MAX) NOT NULL,
    [Customers_Id] INT            NOT NULL,
    CONSTRAINT [PK_Reservations] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ReservationCustomer] FOREIGN KEY ([Customers_Id]) REFERENCES [dbo].[Users_Customer] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_FK_ReservationCustomer]
    ON [dbo].[Reservations]([Customers_Id] ASC);

