-- Create a new database called 'DatabaseName'
-- Connect to the 'master' database to run this snippet

USE master
GO
-- Create the new database if it does not exist already
IF NOT EXISTS (
    SELECT name
        FROM sys.databases
        WHERE name = N'PRUEBA'
)
CREATE DATABASE DatabaseName
GO


-- Create the table in the specified schema
CREATE TABLE USUARIO
(
   ID_USUARIOS INT NOT NULL PRIMARY KEY IDENTITY(1,1), -- primary key column
    NOMBRE[NVARCHAR](50) NOT NULL,
    CONTRASEÑA [NVARCHAR](50) NOT NULL
    -- specify more columns here
);
GO
-- Select rows from a Table or View 'TableOrViewName' in schema 'SchemaName'
SELECT * FROM USUARIO
	/* add search conditions here */
GO

-- Insert rows into table 'USUARIO'
INSERT INTO USUARIO ([NOMBRE], [CONTRASEÑA])
VALUES
('MIGUE', '123'),
('GLENDY', 'SOY LA PERRA'),
('NOEL','SOY LA PUERCA')
GO