CREATE TABLE [dbo].[WorkSchedules] (
    [Id]          INT      IDENTITY (1, 1) NOT NULL,
    [Start]       DATETIME NOT NULL,
    [End]         DATETIME NOT NULL,
    [Hours]       INT      NOT NULL,
    [Employee_Id] INT      NOT NULL,
    CONSTRAINT [PK_WorkSchedules] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EmployeeWorkSchedule] FOREIGN KEY ([Employee_Id]) REFERENCES [dbo].[Users_Employee] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_FK_EmployeeWorkSchedule]
    ON [dbo].[WorkSchedules]([Employee_Id] ASC);

