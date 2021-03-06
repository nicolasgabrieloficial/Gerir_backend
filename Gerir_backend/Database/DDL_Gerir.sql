CREATE DATABASE Gerir
Use Gerir

CREATE TABLE Usu�rios(
 Id UNIQUEIDENTIFIER PRIMARY KEY,
 Nome VARCHAR(150) NOT NULL,
 Email VARCHAR(150) NOT NULL,
 Senha VARCHAR(150) NOT NULL,
 Tipo VARCHAR(100) NOT NULL,
) 

CREATE TABLE Tarefas( 
 Id UNIQUEIDENTIFIER PRIMARY KEY,
 T�tulo VARCHAR(150) NOT NULL,
 Descri��o TEXT NOT NULL,
 Categoria VARCHAR(150) NOT NULL,
 DataEntrega DATETIME NOT NULL,
 Status BIT NOT NULL,
 Usuario_Id UNIQUEIDENTIFIER
 FOREIGN KEY (Usuario_Id) REFERENCES Usu�rios(Id) ON DELETE CASCADE 
 )