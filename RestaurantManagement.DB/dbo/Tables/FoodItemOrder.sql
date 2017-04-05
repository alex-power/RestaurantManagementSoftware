CREATE TABLE [dbo].[FoodItemOrder] (
    [FoodItem_Id] INT NOT NULL,
    [Orders_Id]   INT NOT NULL,
    [Note] VARCHAR(MAX) NULL, 
    CONSTRAINT [PK_FoodItemOrder] PRIMARY KEY CLUSTERED ([FoodItem_Id] ASC, [Orders_Id] ASC),
    CONSTRAINT [FK_FoodItemOrder_FoodItem] FOREIGN KEY ([FoodItem_Id]) REFERENCES [dbo].[FoodItems] ([Id]),
    CONSTRAINT [FK_FoodItemOrder_Order] FOREIGN KEY ([Orders_Id]) REFERENCES [dbo].[Orders] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_FK_FoodItemOrder_Order]
    ON [dbo].[FoodItemOrder]([Orders_Id] ASC);

