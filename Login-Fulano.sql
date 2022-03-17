CREATE LOGIN Fulano 
WITH PASSWORD = 'Fulano'

CREATE USER Fulano FOR LOGIN Fulano

GRANT SELECT TO Fulano

SELECT * FROM Personagens
INNER JOIN Classes
ON Personagens.ClasseId = Classes.ClasseID

SELECT Personagens.Nome, Classes.Nome, Classes.Descricao FROM Personagens
INNER JOIN Classes
ON Personagens.ClasseId = Classes.ClasseID

SELECT Personagens.Nome AS 'Nome Personagem', Classes.Nome AS 'Classe', Classes.Descricao FROM Personagens
INNER JOIN Classes
ON Personagens.ClasseId = Classes.ClasseID

INSERT INTO Classes VALUES ('Bruxa', 'Descrição da classe bruxa')