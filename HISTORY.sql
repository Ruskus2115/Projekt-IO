-- Create a new table called 'TableName' in schema 'SchemaName'
-- Drop the table if it already exists
IF OBJECT_ID('HISTORY', 'U') IS NOT NULL
DROP TABLE HISTORY
GO
-- Create the table in the specified schema
CREATE TABLE HISTORY
(
    id_game INT NOT NULL, -- primary key column
    game_time TIME NOT NULL,
    points INT NOT NULL,
    mode NVARCHAR(255) NOT NULL,
    CONSTRAINT PK_HISTORY PRIMARY KEY NONCLUSTERED (id_game), 
    CONSTRAINT FK_WORDS FOREIGN KEY (id_game)
    REFERENCES WORDS (id_word)
    ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT FK_ACCOUNTS FOREIGN KEY (id_game)
    REFERENCES ACCOUNTS (id_user)
    ON DELETE CASCADE ON UPDATE CASCADE,
);
GO


SELECT * FROM HISTORY
ORDER BY id_game;


DROP TABLE word;
DROP TABLE text;
DROP TABLE Persons;