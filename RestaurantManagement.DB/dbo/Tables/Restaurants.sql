CREATE TABLE [dbo].[Restaurants] (
    [Id]             INT            IDENTITY (1, 1) NOT NULL,
    [Name]           NVARCHAR (MAX) NOT NULL,
    [MondayStart]    DATETIME       NOT NULL,
    [TuesdayStart]   DATETIME       NOT NULL,
    [WednesdayStart] DATETIME       NOT NULL,
    [ThursdayStart]  DATETIME       NOT NULL,
    [FridayStart]    DATETIME       NOT NULL,
    [SaturdayStart]  DATETIME       NOT NULL,
    [SundayStart]    DATETIME       NOT NULL,
    [MondayEnd]      DATETIME       NOT NULL,
    [TuesdayEnd]     DATETIME       NOT NULL,
    [WednesdayEnd]   DATETIME       NOT NULL,
    [ThursdayEnd]    DATETIME       NOT NULL,
    [FridayEnd]      DATETIME       NOT NULL,
    [SaturdayEnd]    DATETIME       NOT NULL,
    [SundayEnd]      DATETIME       NOT NULL,
    [Description]    NVARCHAR (MAX) NULL,
    [Cuisine]        NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_Restaurants] PRIMARY KEY CLUSTERED ([Id] ASC)
);

