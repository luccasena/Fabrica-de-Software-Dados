-- Fábrica de Software - 2025.01 - Ciência de Dados
--             Banco de Dados - DIA 2
-- Lucca de Sena Barbosa - P3 - Ciências da Computação 


-- 1. Crie um novo Schema com nome DESAFIO;
CREATE SCHEMA `DESAFIO`;

-- 2. Crie duas novas tabelas com pelo menos 4 colunas cada. (não esqueça de indicar o Primary Key);
CREATE TABLE `DadosPessoais`(
		`ID` INT NOT NULL,
        `Nome` VARCHAR(20) NULL,
        `Sobrenome` VARCHAR(40) NULL,
        `Idade` INT NULL,
        `Sexo` VARCHAR(20) NULL,
		 PRIMARY KEY (`ID`)
);

CREATE TABLE `DadosAlunos`(
		`ID` INT NOT NULL,
		`Curso` VARCHAR(30) NULL,
        `RGM` INT NULL,
        `Email_Acadêmico` VARCHAR(256) NULL,
        PRIMARY KEY (`ID`)
);

-- 3.Insira 10 novas linhas em cada tabela;
INSERT INTO dadospessoais
VALUES 	(1, 'Lucas', 'Brito', 19,'Masculino'),
		(2 ,'Maria', 'Lima', 21,'Feminino'),
        (3, 'Renato', 'Keirós', 32,'Masculino'),
        (4, 'Fernanda', 'Soares', 17,'Feminino'),
        (5, 'Caique', 'Tancredo', 20,'Masculino'),
        (6, 'Eloísa', 'Miranda', 19,'Feminino'),
        (7, 'Marcos', 'Bonifácio', 24,'Masculino'),
        (8, 'Rafaela', 'Pena', 26,'Feminino'),
        (9, 'Eduardo', 'Costa', 22,'Masculino'),
        (10, 'Clara', 'Calvacanti', 19,'Feminino');
        
select * from dadospessoais;

INSERT INTO dadosalunos
VALUES 	(1, 'Ciências da Computação', 38012456, 'lucas.brito@cs.unipe.edu.br'),
		(2 ,'Medicina', 38156789,'maria.lima@cs.unipe.edu.br'),
        (3, 'Direito', 38239012, 'renato.keiros@cs.unipe.edu.br'),
        (4, 'Psicologia', 38384567, 'fernanda.soares@cs.unipe.edu.br'),
        (5, 'Ciências da Computação', 38491234, 'caique.tancredo@cs.unipe.edu.br'),
        (6, 'Direito', 38567890, 'eloisa.miranda@cs.unipe.edu.br'),
        (7, 'Medicina', 38643218, 'marcos.bonifacio@cs.unipe.edu.br'),
        (8, 'Ciências da Computação', 38790123, 'rafaela.pena@cs.unipe.edu.br'),
        (9, 'Direito', 38876543, 'eduardo.costa@cs.unipe.edu.br'),
        (10, 'Direito', 38912345, 'clara.calvacanti@cs.unipe.edu.br');

select * from dadosalunos;

-- 4. Execute 3 ações de agregação e 2 ações de agrupamentos.

-- 4.1 - Ações de Agregação:

-- Contar a quantidade de estudantes de Direito:
SELECT COUNT(*)
FROM dadosalunos
WHERE Curso = "Direito";

-- Retornar a média das idades dos estudantes:
SELECT AVG(Idade)
FROM dadospessoais;

-- Retornar a idade mais nova entre os estudantes:
SELECT MIN(Idade)
FROM dadospessoais;

-- 4.2 - Ações de Agrupamento:

-- Retornar os cursos da faculdade:
SELECT Curso
FROM dadosalunos 
GROUP BY CURSO;

-- Ordenar os estudantes por idade em ordem crescente:
SELECT  *
FROM dadospessoais
ORDER BY idade asc;