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
    id_user1 INT NOT NULL,
    id_user2 INT NOT NULL,
    id_word INT NOT NULL,
    CONSTRAINT PK_HISTORY PRIMARY KEY NONCLUSTERED (id_word), 
    CONSTRAINT FK_WORDS FOREIGN KEY (id_word)
    REFERENCES WORDS (id_word)
    ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT FK_ACCOUNTS1 FOREIGN KEY (id_user1)
    REFERENCES ACCOUNTS (id_user)
    ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT FK_ACCOUNTS2 FOREIGN KEY (id_user2)
    REFERENCES ACCOUNTS (id_user)
    ON DELETE NO ACTION ON UPDATE NO ACTION
);
GO


SELECT * FROM HISTORY
ORDER BY id_game;
