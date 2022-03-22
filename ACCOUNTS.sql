-- Create a new table called 'TableName' in schema 'SchemaName'
-- Drop the table if it already exists
IF OBJECT_ID('ACCOUNTS', 'U') IS NOT NULL
DROP TABLE ACCOUNTS
GO
-- Create the table in the specified schema
CREATE TABLE ACCOUNTS
(
    id_user INT NOT NULL, -- primary key column
    email NVARCHAR(255) UNIQUE NOT NULL,
    nick NVARCHAR(255) UNIQUE NOT NULL,
    password NVARCHAR(255) NOT NULL,
    CONSTRAINT PK_ACCOUNTS PRIMARY KEY NONCLUSTERED (id_user)
);
GO



SELECT * FROM ACCOUNTS
ORDER BY id_user;