CREATE TABLE [dbo].[FoodItems] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [Name]        NVARCHAR (MAX) NOT NULL,
    [Description] NVARCHAR (MAX) NULL,
    [Price]       NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_FoodItems] PRIMARY KEY CLUSTERED ([Id] ASC)
);

