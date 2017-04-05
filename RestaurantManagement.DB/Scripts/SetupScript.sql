INSERT INTO [Users]
(Username, Password, CreationDate, Name, Email)
VALUES ('manager', 'manager', SYSDATETIME(), 'manager test', 'manager@email.com')
INSERT INTO [Users_Employee]
(Id)
VALUES (SCOPE_IDENTITY())
INSERT INTO [Users_Manager]
(Id)
VALUES (SCOPE_IDENTITY())

INSERT INTO [Users]
(Username, Password, CreationDate, Name, Email)
VALUES ('server', 'server', SYSDATETIME(), 'server test', 'server@email.com')
INSERT INTO [Users_Employee]
(Id)
VALUES (SCOPE_IDENTITY())
INSERT INTO [Users_Kitchen]
(Id)
VALUES (SCOPE_IDENTITY())

INSERT INTO [Users]
(Username, Password, CreationDate, Name, Email)
VALUES ('kitchen', 'kitchen', SYSDATETIME(), 'kitchen test', 'kitchen@email.com')
INSERT INTO [Users_Employee]
(Id)
VALUES (SCOPE_IDENTITY())
INSERT INTO [Users_Kitchen]
(Id)
VALUES (SCOPE_IDENTITY())

INSERT INTO [Users]
(Username, Password, CreationDate, Name, Email)
VALUES ('customer', 'customer', SYSDATETIME(), 'customer test', 'kitchen@email.com')
INSERT INTO [Users_Customer]
(Id)
VALUES (SCOPE_IDENTITY())


INSERT INTO [Restaurants]
(Name, Description, Cuisine)
VALUES ('Test Eats', 'Restaurant for good tests', 'Italian')

INSERT INTO [FoodItems]
(Name, Description, Price)
VALUES ('Chicken Test', 'a test chicken', 9.99)

INSERT INTO [FoodItems]
(Name, Description, Price)
VALUES ('Potestos', 'Light and fluffy', 2.00)

INSERT INTO [FoodItems]
(Name, Description, Price)
VALUES ('Eggs and Bacon', 'Well salted', 5.99)

INSERT INTO [FoodItems]
(Name, Description, Price)
VALUES ('Water', '', 0)

INSERT INTO [FoodItems]
(Name, Description, Price)
VALUES ('Coffee', '', 1.50)

INSERT INTO [FoodItems]
(Name, Description, Price)
VALUES ('Soda', '', 1.50)

INSERT INTO [FoodItems]
(Name, Description, Price)
VALUES ('Test Sandwich', 'LOADED with spicy jalepenos', 6.99)

INSERT INTO [FoodItems]
(Name, Description, Price)
VALUES ('Chicken Noodle Soup', 'No shapes, sorry', 4.99)