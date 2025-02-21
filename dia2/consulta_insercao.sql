-- Fábrica de Softare 2025.01 - Dia 2
-- Após importar a base de dados no schema:

SELECT * 
FROM membros;

-- 1: Seleciona todas as variáveis da tabela membros que retorna todos os registros com RenewStatus = On de maneira crescente.
SELECT * 
FROM membros 
WHERE RenewStatus = 'On' 
ORDER BY PersonID ASC;

-- 2: Inserido um registro na tabela membros:
INSERT INTO 
membros(YearMonth, PersonID, FirstName, LastName) 
VALUES ('jan/25', 1111111, 'Gary', 'Rainer');

-- 3: Atualizando um dado de um registro na tabela membros:
UPDATE  membros
SET Email = 'garyrainer@gmail.com'
WHERE PersonID = 1111111;

-- 4: Deletando um registro na tabela:
DELETE FROM  membros
WHERE PersonID = 1111111;
