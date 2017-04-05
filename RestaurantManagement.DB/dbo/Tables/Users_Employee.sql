CREATE TABLE [dbo].[Users_Employee] (
    [Availability] NVARCHAR (MAX) NOT NULL,
    [HoursPerWeek] INT NOT NULL,
    [PayRate]      DECIMAL            NULL,
    [Salary]       DECIMAL            NULL,
    [Id]           INT            NOT NULL,
    CONSTRAINT [PK_Users_Employee] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Employee_inherits_User] FOREIGN KEY ([Id]) REFERENCES [dbo].[Users] ([Id]) ON DELETE CASCADE
);

