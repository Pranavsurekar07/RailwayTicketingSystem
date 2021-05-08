CREATE TABLE [dbo].[userreg]
(
	[Id] INT NOT NULL PRIMARY KEY,[Username] NVARCHAR(50) NOT NULL, 
    [Password] NVARCHAR(50) NOT NULL, 
    [Confirmpassword] NVARCHAR(50) NOT NULL, 
    [Email] NVARCHAR(MAX) NOT NULL, 
    [Phone] INT NOT NULL, 
    [Address] NVARCHAR(MAX) NOT NULL
)
