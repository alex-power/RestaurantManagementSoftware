CREATE TABLE [dbo].[Restaurants] (
    [Id]             INT            IDENTITY (1, 1) NOT NULL,
    [Name]           NVARCHAR (MAX) NOT NULL,
    [Description]    NVARCHAR (MAX) NULL,
    [Cuisine]        NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_Restaurants] PRIMARY KEY CLUSTERED ([Id] ASC)
);

