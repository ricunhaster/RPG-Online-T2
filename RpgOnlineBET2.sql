 -- DDL

 CREATE DATABASE RpgOnlineBET2
 GO

 USE RpgOnlineBET2
 GO

 CREATE TABLE Usuarios 
 (
	UsuarioId INT PRIMARY KEY IDENTITY
	,Email VARCHAR(50) UNIQUE NOT NULL
	,Senha VARCHAR(255) NOT NULL 
 )
 GO

 CREATE TABLE Classes
 (
	ClasseID INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(50) UNIQUE NOT NULL
	,Descricao VARCHAR (255) 
 )
 GO

 CREATE TABLE Personagens
 (
 
	PersonagemId INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(20) UNIQUE NOT NULL
	,UsuarioID INT UNIQUE FOREIGN KEY REFERENCES Usuarios(UsuarioID)
	,ClasseId INT FOREIGN KEY REFERENCES Classes(ClasseId)
 )

 GO

 CREATE TABLE Habilidades
 (
	HabilidadeId INT PRIMARY KEY IDENTITY 
	,Nome VARCHAR(100) UNIQUE NOT NULL
 )
 GO

 CREATE TABLE ClasseHabilidade
 (
	ClasseId INT FOREIGN KEY REFERENCES Classes(ClasseId)
	,HabilidadeId INT FOREIGN KEY REFERENCES Habilidades(HabilidadeId)

 )

 --Final DDL

 --DML

 INSERT INTO Usuarios VALUES ('email@email.com', '123456')
 INSERT INTO Classes VALUES ('Bárbaro', 'Descricao da classe barbaro')
 INSERT INTO Personagens VALUES ('DeuBug', 1, 1)
 INSERT INTO Habilidades VALUES ('Lança Mortal'),('Escudo Supremo')
 INSERT INTO ClasseHabilidade VALUES(1, 1), (1,2)


 INSERT INTO Usuarios VALUES ('email2@email.com', '123456')
 INSERT INTO Classes VALUES ('Monge', 'Descricao da classe monge')
 INSERT INTO Personagens VALUES ('BitBug', 2, 2)
 INSERT INTO Habilidades VALUES ('Recuperar Vida')
 INSERT INTO ClasseHabilidade VALUES(2, 2), (2, 3)

 UPDATE Usuarios
 SET Senha = '123456'
 WHERE UsuarioId = 1
-- Final DML

--DQL
SELECT * FROM Usuarios
SELECT * FROM Classes
SELECT * FROM  Personagens
SELECT * FROM ClasseHabilidade
SELECT * FROM Habilidades

SELECT * FROM Personagens
INNER JOIN Classes
ON Personagens.ClasseId = Classes.ClasseID

SELECT Personagens.Nome, Classes.Nome, Classes.Descricao FROM Personagens
INNER JOIN Classes
ON Personagens.ClasseId = Classes.ClasseID

SELECT Personagens.Nome AS 'Nome Personagem', Classes.Nome AS 'Classe', Classes.Descricao FROM Personagens
INNER JOIN Classes
ON Personagens.ClasseId = Classes.ClasseID

--FORMA ABREVIADA DO SELECT ANTERIOR
SELECT P.nome 'Nome Personagem', C.Nome 'Classe', C.Descricao FROM Personagens AS P	
JOIN Classes AS C
ON P.ClasseId = C.ClasseID

