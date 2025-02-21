-- Fábrica de Softare 2025.01 - Dia 2

-- 5 Criação de um Banco de Dados e uma Tabela:

CREATE SCHEMA `workshop2`;
CREATE TABLE `workShop2`.`membros2`(
		`PersonID` INT NOT NULL,
        `FirstName` VARCHAR(45) NULL,
        `LastName` VARCHAR(45) NULL,
        `City` VARCHAR(45) NULL,
        PRIMARY KEY (`PersonID`)
);

SELECT * FROM membros2;

-- 6 Inserindo Valores na nova Tabela:

INSERT INTO membros2(PersonID, FirstName, LastName, City)
VALUES 	(123456, 'João', 'Henrique', 'João Pessoa'),
		(654321, 'Maria', 'Diniz', 'Recife'),
        (098765, 'Eduardo', 'Souza', 'Rio de Janeiro'),
        (567890, 'Renata', 'Rocha', 'São Oaulo');


