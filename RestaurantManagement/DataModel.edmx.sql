
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 04/04/2017 18:31:31
-- Generated from EDMX file: C:\Users\power\documents\visual studio 2015\Projects\RestaurantManagement\RestaurantManagement\DataModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [RestaurantManagement.DB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_Customer_inherits_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users_Customer] DROP CONSTRAINT [FK_Customer_inherits_User];
GO
IF OBJECT_ID(N'[dbo].[FK_Employee_inherits_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users_Employee] DROP CONSTRAINT [FK_Employee_inherits_User];
GO
IF OBJECT_ID(N'[dbo].[FK_EmployeeWorkSchedule]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[WorkSchedules] DROP CONSTRAINT [FK_EmployeeWorkSchedule];
GO
IF OBJECT_ID(N'[dbo].[FK_FoodItemOrder_FoodItem]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FoodItemOrder] DROP CONSTRAINT [FK_FoodItemOrder_FoodItem];
GO
IF OBJECT_ID(N'[dbo].[FK_FoodItemOrder_Order]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FoodItemOrder] DROP CONSTRAINT [FK_FoodItemOrder_Order];
GO
IF OBJECT_ID(N'[dbo].[FK_Kitchen_inherits_Employee]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users_Kitchen] DROP CONSTRAINT [FK_Kitchen_inherits_Employee];
GO
IF OBJECT_ID(N'[dbo].[FK_Manager_inherits_Employee]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users_Manager] DROP CONSTRAINT [FK_Manager_inherits_Employee];
GO
IF OBJECT_ID(N'[dbo].[FK_OrderTable]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tables] DROP CONSTRAINT [FK_OrderTable];
GO
IF OBJECT_ID(N'[dbo].[FK_ReservationCustomer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Reservations] DROP CONSTRAINT [FK_ReservationCustomer];
GO
IF OBJECT_ID(N'[dbo].[FK_ReviewCustomer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Reviews] DROP CONSTRAINT [FK_ReviewCustomer];
GO
IF OBJECT_ID(N'[dbo].[FK_Server_inherits_Employee]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users_Server] DROP CONSTRAINT [FK_Server_inherits_Employee];
GO
IF OBJECT_ID(N'[dbo].[FK_ServerTable]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tables] DROP CONSTRAINT [FK_ServerTable];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FoodItemOrder]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FoodItemOrder];
GO
IF OBJECT_ID(N'[dbo].[FoodItems]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FoodItems];
GO
IF OBJECT_ID(N'[dbo].[Orders]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Orders];
GO
IF OBJECT_ID(N'[dbo].[Reservations]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Reservations];
GO
IF OBJECT_ID(N'[dbo].[Restaurants]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Restaurants];
GO
IF OBJECT_ID(N'[dbo].[Reviews]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Reviews];
GO
IF OBJECT_ID(N'[dbo].[Tables]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tables];
GO
IF OBJECT_ID(N'[dbo].[Users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users];
GO
IF OBJECT_ID(N'[dbo].[Users_Customer]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users_Customer];
GO
IF OBJECT_ID(N'[dbo].[Users_Employee]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users_Employee];
GO
IF OBJECT_ID(N'[dbo].[Users_Kitchen]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users_Kitchen];
GO
IF OBJECT_ID(N'[dbo].[Users_Manager]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users_Manager];
GO
IF OBJECT_ID(N'[dbo].[Users_Server]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users_Server];
GO
IF OBJECT_ID(N'[dbo].[WorkSchedules]', 'U') IS NOT NULL
    DROP TABLE [dbo].[WorkSchedules];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Username] nvarchar(max)  NOT NULL,
    [Password] nvarchar(max)  NOT NULL,
    [Email] nvarchar(max)  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [CreationDate] datetime  NOT NULL
);
GO

-- Creating table 'Orders'
CREATE TABLE [dbo].[Orders] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [TotalPrice] nvarchar(max)  NULL,
    [Tip] nvarchar(max)  NULL,
    [State] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'FoodItems'
CREATE TABLE [dbo].[FoodItems] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NULL,
    [Price] decimal(18,0)  NOT NULL
);
GO

-- Creating table 'Reservations'
CREATE TABLE [dbo].[Reservations] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [DateTime] datetime  NOT NULL,
    [Note] nvarchar(max)  NOT NULL,
    [Customers_Id] int  NOT NULL
);
GO

-- Creating table 'Reviews'
CREATE TABLE [dbo].[Reviews] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Text] nvarchar(max)  NOT NULL,
    [DateOfVisit] datetime  NOT NULL,
    [DateOfPost] datetime  NOT NULL,
    [Rating] int  NOT NULL,
    [Customers_Id] int  NOT NULL
);
GO

-- Creating table 'WorkSchedules'
CREATE TABLE [dbo].[WorkSchedules] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Start] datetime  NOT NULL,
    [End] datetime  NOT NULL,
    [Hours] int  NOT NULL,
    [Employee_Id] int  NOT NULL
);
GO

-- Creating table 'Restaurants'
CREATE TABLE [dbo].[Restaurants] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NULL,
    [Cuisine] nvarchar(max)  NULL
);
GO

-- Creating table 'Tables'
CREATE TABLE [dbo].[Tables] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [NumPeople] int  NOT NULL,
    [TableStatus] nvarchar(max)  NOT NULL,
    [Order_Id] int  NOT NULL,
    [Server_Id] int  NOT NULL
);
GO

-- Creating table 'Users_Customer'
CREATE TABLE [dbo].[Users_Customer] (
    [Id] int  NOT NULL
);
GO

-- Creating table 'Users_Employee'
CREATE TABLE [dbo].[Users_Employee] (
    [Availability] nvarchar(max)  NOT NULL,
    [HoursPerWeek] int  NOT NULL,
    [PayRate] int  NULL,
    [Salary] int  NULL,
    [Id] int  NOT NULL
);
GO

-- Creating table 'Users_Server'
CREATE TABLE [dbo].[Users_Server] (
    [NumTables] int  NOT NULL,
    [Id] int  NOT NULL
);
GO

-- Creating table 'Users_Kitchen'
CREATE TABLE [dbo].[Users_Kitchen] (
    [Role] nvarchar(max)  NOT NULL,
    [Id] int  NOT NULL
);
GO

-- Creating table 'Users_Manager'
CREATE TABLE [dbo].[Users_Manager] (
    [Id] int  NOT NULL
);
GO

-- Creating table 'FoodItemOrder'
CREATE TABLE [dbo].[FoodItemOrder] (
    [FoodItem_Id] int  NOT NULL,
    [Orders_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Orders'
ALTER TABLE [dbo].[Orders]
ADD CONSTRAINT [PK_Orders]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'FoodItems'
ALTER TABLE [dbo].[FoodItems]
ADD CONSTRAINT [PK_FoodItems]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Reservations'
ALTER TABLE [dbo].[Reservations]
ADD CONSTRAINT [PK_Reservations]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Reviews'
ALTER TABLE [dbo].[Reviews]
ADD CONSTRAINT [PK_Reviews]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'WorkSchedules'
ALTER TABLE [dbo].[WorkSchedules]
ADD CONSTRAINT [PK_WorkSchedules]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Restaurants'
ALTER TABLE [dbo].[Restaurants]
ADD CONSTRAINT [PK_Restaurants]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Tables'
ALTER TABLE [dbo].[Tables]
ADD CONSTRAINT [PK_Tables]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Users_Customer'
ALTER TABLE [dbo].[Users_Customer]
ADD CONSTRAINT [PK_Users_Customer]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Users_Employee'
ALTER TABLE [dbo].[Users_Employee]
ADD CONSTRAINT [PK_Users_Employee]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Users_Server'
ALTER TABLE [dbo].[Users_Server]
ADD CONSTRAINT [PK_Users_Server]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Users_Kitchen'
ALTER TABLE [dbo].[Users_Kitchen]
ADD CONSTRAINT [PK_Users_Kitchen]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Users_Manager'
ALTER TABLE [dbo].[Users_Manager]
ADD CONSTRAINT [PK_Users_Manager]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [FoodItem_Id], [Orders_Id] in table 'FoodItemOrder'
ALTER TABLE [dbo].[FoodItemOrder]
ADD CONSTRAINT [PK_FoodItemOrder]
    PRIMARY KEY CLUSTERED ([FoodItem_Id], [Orders_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [FoodItem_Id] in table 'FoodItemOrder'
ALTER TABLE [dbo].[FoodItemOrder]
ADD CONSTRAINT [FK_FoodItemOrder_FoodItem]
    FOREIGN KEY ([FoodItem_Id])
    REFERENCES [dbo].[FoodItems]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Orders_Id] in table 'FoodItemOrder'
ALTER TABLE [dbo].[FoodItemOrder]
ADD CONSTRAINT [FK_FoodItemOrder_Order]
    FOREIGN KEY ([Orders_Id])
    REFERENCES [dbo].[Orders]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FoodItemOrder_Order'
CREATE INDEX [IX_FK_FoodItemOrder_Order]
ON [dbo].[FoodItemOrder]
    ([Orders_Id]);
GO

-- Creating foreign key on [Customers_Id] in table 'Reviews'
ALTER TABLE [dbo].[Reviews]
ADD CONSTRAINT [FK_ReviewCustomer]
    FOREIGN KEY ([Customers_Id])
    REFERENCES [dbo].[Users_Customer]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ReviewCustomer'
CREATE INDEX [IX_FK_ReviewCustomer]
ON [dbo].[Reviews]
    ([Customers_Id]);
GO

-- Creating foreign key on [Customers_Id] in table 'Reservations'
ALTER TABLE [dbo].[Reservations]
ADD CONSTRAINT [FK_ReservationCustomer]
    FOREIGN KEY ([Customers_Id])
    REFERENCES [dbo].[Users_Customer]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ReservationCustomer'
CREATE INDEX [IX_FK_ReservationCustomer]
ON [dbo].[Reservations]
    ([Customers_Id]);
GO

-- Creating foreign key on [Employee_Id] in table 'WorkSchedules'
ALTER TABLE [dbo].[WorkSchedules]
ADD CONSTRAINT [FK_EmployeeWorkSchedule]
    FOREIGN KEY ([Employee_Id])
    REFERENCES [dbo].[Users_Employee]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmployeeWorkSchedule'
CREATE INDEX [IX_FK_EmployeeWorkSchedule]
ON [dbo].[WorkSchedules]
    ([Employee_Id]);
GO

-- Creating foreign key on [Order_Id] in table 'Tables'
ALTER TABLE [dbo].[Tables]
ADD CONSTRAINT [FK_OrderTable]
    FOREIGN KEY ([Order_Id])
    REFERENCES [dbo].[Orders]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OrderTable'
CREATE INDEX [IX_FK_OrderTable]
ON [dbo].[Tables]
    ([Order_Id]);
GO

-- Creating foreign key on [Server_Id] in table 'Tables'
ALTER TABLE [dbo].[Tables]
ADD CONSTRAINT [FK_ServerTable]
    FOREIGN KEY ([Server_Id])
    REFERENCES [dbo].[Users_Server]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ServerTable'
CREATE INDEX [IX_FK_ServerTable]
ON [dbo].[Tables]
    ([Server_Id]);
GO

-- Creating foreign key on [Id] in table 'Users_Customer'
ALTER TABLE [dbo].[Users_Customer]
ADD CONSTRAINT [FK_Customer_inherits_User]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'Users_Employee'
ALTER TABLE [dbo].[Users_Employee]
ADD CONSTRAINT [FK_Employee_inherits_User]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'Users_Server'
ALTER TABLE [dbo].[Users_Server]
ADD CONSTRAINT [FK_Server_inherits_Employee]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[Users_Employee]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'Users_Kitchen'
ALTER TABLE [dbo].[Users_Kitchen]
ADD CONSTRAINT [FK_Kitchen_inherits_Employee]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[Users_Employee]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'Users_Manager'
ALTER TABLE [dbo].[Users_Manager]
ADD CONSTRAINT [FK_Manager_inherits_Employee]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[Users_Employee]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------