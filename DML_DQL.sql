USE RpgOnlineBET2
 GO

--DML

INSERT INTO Usuarios VALUES ('chicano@gmail.com', 'xy3321!@#')
INSERT INTO Classes VALUES ('Centurion', 'roman soldier')
INSERT INTO Personagens VALUES ('Antonimous', 8, 7)
INSERT INTO Habilidades VALUES ('Runa Mágica')
INSERT INTO ClasseHabilidade VALUES (7, 8)
INSERT INTO Personagens VALUES ('Chicano', 12, 10)
INSERT INTO ClasseHabilidade VALUES (10, 8)

UPDATE Classes 
SET Nome = 'Mongol' 
WHERE ClasseID = 5
GO

UPDATE Classes
SET Descricao = 'Arqueiro'
WHERE ClasseID = 5
GO	

DELETE FROM ClasseHabilidade
WHERE ClasseId = 2
GO	

--FIM DA DML


--DQL

SELECT * FROM Usuarios
SELECT * FROM Classes
SELECT * FROM Personagens
SELECT * FROM ClasseHabilidade
SELECT * FROM Habilidades

SELECT * FROM Personagens WHERE UsuarioID = 1 
SELECT * FROM Habilidades WHERE Nome = 'Runa Mágica' 

SELECT Personagens.Nome, Classes.Nome, Classes.Descricao FROM Personagens
INNER JOIN Classes
ON Personagens.ClasseId = Classes.ClasseID

SELECT Personagens.Nome, Usuarios.Email,  Usuarios.Senha FROM Personagens
INNER JOIN Usuarios
ON Personagens.UsuarioID = Usuarios.UsuarioId

SELECT Classes.Nome, Classes.Descricao FROM Classes
LEFT JOIN Habilidades
ON Classes.ClasseID = Habilidades.HabilidadeId

SELECT Habilidades.Nome FROM Habilidades
LEFT JOIN Classes
ON Classes.ClasseID = Habilidades.HabilidadeId

SELECT ClasseHabilidade.HabilidadeId FROM ClasseHabilidade
LEFT JOIN Habilidades
ON Habilidades.HabilidadeId = ClasseHabilidade.ClasseId 

SELECT ClasseHabilidade.ClasseId FROM ClasseHabilidade
INNER JOIN Habilidades
ON Habilidades.HabilidadeId = ClasseHabilidade.HabilidadeId

SELECT ClasseHabilidade.ClasseId FROM ClasseHabilidade
INNER JOIN Classes
ON Classes.ClasseID = ClasseHabilidade.ClasseId 


-- FIM DA DQL
