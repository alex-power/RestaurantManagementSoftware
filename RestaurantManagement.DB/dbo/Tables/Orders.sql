CREATE TABLE [dbo].[Orders] (
    [Id]         INT            IDENTITY (1, 1) NOT NULL,
    [TotalPrice] NVARCHAR (MAX) NULL,
    [Tip]        NVARCHAR (MAX) NULL,
    [State]      NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED ([Id] ASC)
);

