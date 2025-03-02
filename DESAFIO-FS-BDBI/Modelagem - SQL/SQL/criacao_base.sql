-- Fábrica de Software - 2025.01 - Ciência de Dados
--         Banco de Dados - DESAFIO FINAL
-- Lucca de Sena Barbosa - P3 - Ciências da Computação 

-- Criando SCHEMA LojaFilmes;
CREATE SCHEMA LojaFilmes;

-- Criando uma tabela Clientes;
CREATE TABLE Clientes (
    idCliente INT PRIMARY KEY,
    Nome VARCHAR(255),
    Email VARCHAR(120),
    Telefone VARCHAR(16),
    FilmesComprados INT
); 

-- Inserindo valores na tabela Clientes;
INSERT INTO Clientes (idCliente, Nome, Email, Telefone, FilmesComprados) VALUES
					(1, 'João Silva', 'joao.silva@email.com', '(11) 9 9999-9999', 5),
					(2, 'Maria Oliveira', 'maria.oliveira@email.com', '(21) 9 8888-8888', 12),
					(3, 'Pedro Santos', 'pedro.santos@email.com', '(31) 9 7777-7777', 3),
					(4, 'Ana Rodrigues', 'ana.rodrigues@email.com', '(41) 9 6666-6666', 8),
					(5, 'Lucas Pereira', 'lucas.pereira@email.com', '(51) 9 5555-5555', 15),
					(6, 'Julia Costa', 'julia.costa@email.com', '(61) 9 4444-4444', 7),
					(7, 'Gabriel Souza', 'gabriel.souza@email.com', '(71) 9 3333-3333', 10),
					(8, 'Beatriz Mendes', 'beatriz.mendes@email.com', '(81) 9 2222-2222', 2),
					(9, 'Rafael Alves', 'rafael.alves@email.com', '(91) 9 1111-1111', 9),
					(10, 'Isabela Rocha', 'isabela.rocha@email.com', '(12) 9 0000-0000', 11),
					(11, 'Fernando Gomes', 'fernando.gomes@email.com', '(13) 9 8765-4321', 6),
					(12, 'Camila Nunes', 'camila.nunes@email.com', '(14) 9 1234-5678', 14),
					(13, 'Bruno Carvalho', 'bruno.carvalho@email.com', '(15) 9 8761-2345', 4),
					(14, 'Amanda Ribeiro', 'amanda.ribeiro@email.com', '(16) 9 5678-1234', 13),
					(15, 'Thiago Barbosa', 'thiago.barbosa@email.com', '(17) 9 2345-6789', 1),
					(16, 'Larissa Castro', 'larissa.castro@email.com', '(18) 9 6789-1234', 16),
					(17, 'Ricardo Ferreira', 'ricardo.ferreira@email.com', '(19) 9 3456-7890', 17),
					(18, 'Patrícia Lima', 'patricia.lima@email.com', '(22) 9 7890-1234', 18),
					(19, 'Gustavo Pereira', 'gustavo.pereira@email.com', '(23) 9 4567-8901', 19),
					(20, 'Carolina Santos', 'carolina.santos@email.com', '(24) 9 8901-2345', 20);
 
 
-- Criando uma tabela Fornecedor;
CREATE TABLE Fornecedor (
    idFornecedor INT PRIMARY KEY,
    Nome VARCHAR(255),
    Email VARCHAR(255),
    TempoContratoMeses INT,
    CNPJ VARCHAR(20)
);

-- Inserindo valores na tabela Fornecedor;
INSERT INTO Fornecedor (idFornecedor, Nome, Email, TempoContratoMeses, CNPJ) VALUES
					(1, 'CineDistribuidora Nacional', 'contato@cinedistribuidoranacional.com.br', 24, '12.345.678/0001-90'),
					(2, 'Filmes Premium LTDA', 'vendas@filmespremium.com', 12, '98.765.432/0001-10'),
					(3, 'Estúdio Cinematográfico Alfa', 'parcerias@estudiocinemaalfa.com', 36, '11.222.333/0001-45'),
					(4, 'Distribuidora CineGlobal', 'info@cineglobaldistribuidora.com', 18, '44.555.666/0001-78'),
					(5, 'MegaFilmes Brasil', 'comercial@megafilmesbrasil.com.br', 24, '77.888.999/0001-23'),
					(6, 'Vision Filmes e Vídeos', 'atendimento@visionfilmes.com', 12, '22.333.444/0001-56'),
					(7, 'CineArt Distribuições', 'contato@cineartdistribuicoes.com.br', 36, '55.666.777/0001-89'),
					(8, 'Global Cine Supply', 'vendas@globalcinesupply.com', 18, '88.999.000/0001-34'),
					(9, 'Filmes Brasil Distribuidora', 'info@filmesbrasildistribuidora.com', 24, '33.444.555/0001-67'),
					(10, 'Estrela Filmes Ltda', 'comercial@estrelafilmes.com', 12, '66.777.888/0001-90'),
					(11, 'CineSul Distribuidora', 'atendimento@cinesuldistribuidora.com.br', 36, '99.000.111/0001-23'),
					(12, 'Universo Filmes e Séries', 'contato@universofimeseseries.com', 18, '10.200.300/0001-56'),
					(13, 'Nova Era Filmes', 'vendas@novaerafilmes.com.br', 24, '20.300.400/0001-89'),
					(14, 'CineMais Distribuidora', 'info@cinemaisdistribuidora.com', 12, '30.400.500/0001-34'),
					(15, 'Real Filmes Brasil', 'comercial@realfilmesbrasil.com.br', 36, '40.500.600/0001-67'),
					(16, 'Top Cine Distribuidora', 'atendimento@topcinedistribuidora.com', 18, '50.600.700/0001-90'),
					(17, 'Premium Filmes e Vídeos', 'contato@premiumfilmesevideos.com', 24, '60.700.800/0001-23'),
					(18, 'CinePrime Distribuições', 'vendas@cineprimedistribuicoes.com.br', 12, '70.800.900/0001-56'),
					(19, 'Central Filmes Brasil', 'info@centralfilmesbrasil.com', 36, '80.900.000/0001-89'),
					(20, 'Visão Cine Ltda', 'comercial@visaocine.com.br', 18, '90.000.100/0001-34');

-- Criando uma tabela UnidadesLoja;
CREATE TABLE UnidadesLoja (
    idLoja INT PRIMARY KEY,
    Bairro VARCHAR(255),
    Endereco VARCHAR(255),
    Faturamento DECIMAL(10, 2),
    QuantFuncionarios INT
);

-- Inserindo valores na tabela UnidadesLoja;
INSERT INTO UnidadesLoja (idLoja, Bairro, Endereco, Faturamento, QuantFuncionarios) VALUES
					(1, 'Manaíra', 'Av. Edson Ramalho, 1000', 15000.00, 4),
					(2, 'Bessa', 'Av. Beira Mar, 500', 12000.00, 3),
					(3, 'Centro', 'Rua Duque de Caxias, 200', 10000.00, 4),
					(4, 'Mangabeira', 'Av. Hilton Souto Maior, 1500', 12000.00, 3),
					(5, 'Tambaú', 'Av. Epitácio Pessoa, 800', 13000.00, 5),
					(6, 'Cabo Branco', 'Av. Cabo Branco, 300', 11000.00, 4),
					(7, 'Jaguaribe', 'Rua dos Ipês, 400', 8000.00, 3),
					(8, 'Torre', 'Av. Rui Barbosa, 600', 10500.00, 4);

-- Criando uma tabela Funcionarios;
CREATE TABLE Funcionarios (
    idFuncionario INT PRIMARY KEY,
    Nome VARCHAR(255),
    HorasTrabalhadas INT,
    Salario DECIMAL(10, 2),
    NumeroVendas INT,
    fk_UnidadesLoja_idLoja INT,
    FOREIGN KEY (fk_UnidadesLoja_idLoja) REFERENCES UnidadesLoja(idLoja)
);

-- Inserindo valores na tabela Funcionarios;
INSERT INTO Funcionarios (idFuncionario, Nome, HorasTrabalhadas, Salario, NumeroVendas, fk_UnidadesLoja_idLoja) VALUES
					(1, 'Ana Silva', 160, 2500.00, 30, 1),
					(2, 'Pedro Souza', 170, 2700.00, 35, 1),
					(3, 'Maria Oliveira', 150, 2300.00, 28, 1),
					(4, 'Lucas Santos', 180, 2900.00, 40, 1),
					(5, 'Julia Pereira', 165, 2600.00, 32, 2),
					(6, 'Gabriel Costa', 175, 2800.00, 38, 2),
					(7, 'Beatriz Mendes', 155, 2400.00, 29, 2),
					(8, 'Rafael Alves', 185, 3000.00, 42, 3),
					(9, 'Isabela Rocha', 160, 2500.00, 31, 3),
					(10, 'Fernando Gomes', 170, 2700.00, 36, 3),
					(11, 'Camila Nunes', 150, 2300.00, 27, 3),
					(12, 'Bruno Carvalho', 180, 2900.00, 41, 4),
					(13, 'Amanda Ribeiro', 165, 2600.00, 33, 4),
					(14, 'Thiago Barbosa', 175, 2800.00, 37, 4),
					(15, 'Larissa Castro', 155, 2400.00, 28, 5),
					(16, 'Ricardo Ferreira', 185, 3000.00, 43, 5),
					(17, 'Patrícia Lima', 160, 2500.00, 32, 5),
					(18, 'Gustavo Pereira', 170, 2700.00, 35, 5),
					(19, 'Carolina Santos', 150, 2300.00, 29, 5),
					(20, 'Eduardo Rodrigues', 180, 2900.00, 40, 6),
					(21, 'Letícia Oliveira', 165, 2600.00, 34, 6),
					(22, 'Vinicius Souza', 175, 2800.00, 38, 6),
					(23, 'Natália Costa', 155, 2400.00, 27, 6),
					(24, 'Leonardo Mendes', 185, 3000.00, 42, 7),
					(25, 'Juliana Alves', 160, 2500.00, 33, 7),
					(26, 'Daniel Rocha', 170, 2700.00, 36, 7),
					(27, 'Mariana Gomes', 150, 2300.00, 30, 8),
					(28, 'Rodrigo Nunes', 180, 2900.00, 41, 8),
					(29, 'Fernanda Carvalho', 165, 2600.00, 35, 8),
					(30, 'Henrique Ribeiro', 175, 2800.00, 39, 8);
 
-- Criando uma tabela Fornece;
CREATE TABLE Fornece (
    fk_UnidadesLoja_idLoja INT,
    fk_Fornecedor_idFornecedor INT,
    Filme VARCHAR(255),
    Quantidade INT,
    DataFornecimento DATE PRIMARY KEY
);
 
-- Estabelece uma relação de chave estrangeira entre as tabelas Fornece e UnidadesLoja
ALTER TABLE Fornece ADD CONSTRAINT FK_Fornece_2
    FOREIGN KEY (fk_UnidadesLoja_idLoja)
    REFERENCES UnidadesLoja (idLoja)
    ON DELETE SET NULL;
 
-- Estabelece uma relação de chave estrangeira entre as tabelas Fornece e Fornecedor
ALTER TABLE Fornece ADD CONSTRAINT FK_Fornece_3
    FOREIGN KEY (fk_Fornecedor_idFornecedor)
    REFERENCES Fornecedor (idFornecedor)
    ON DELETE SET NULL;
 
-- Inserindo valores na tabela Fornece;
INSERT INTO Fornece (fk_UnidadesLoja_idLoja, fk_Fornecedor_idFornecedor, Filme, Quantidade, DataFornecimento) VALUES
					(1, 1, 'Missão Impossível 7', 50, '2023-10-26'),
					(2, 2, 'O Homem do Norte', 30, '2023-10-25'),
					(3, 3, 'Duna', 40, '2023-10-24'),
					(4, 4, 'A Freira 2', 25, '2023-10-23'),
					(5, 5, 'Gato de Botas 2', 60, '2023-10-22'),
					(6, 6, 'Indiana Jones e a Relíquia do Destino', 35, '2023-10-21'),
					(7, 7, 'Matrix Resurrections', 45, '2023-10-20'),
					(8, 8, 'Ingresso para o Paraíso', 55, '2023-10-19'),
					(3, 9, 'O Assassino', 20, '2023-10-18'),
					(1, 10, 'Avatar: O Caminho da Água', 30, '2023-10-17'),
					(1, 1, 'John Wick 4: Baba Yaga', 40, '2023-10-16'),
					(2, 2, 'Trem-Bala', 50, '2023-10-15'),
					(3, 3, 'O Beco do Pesadelo', 25, '2023-10-14'),
					(4, 4, 'Fale Comigo', 60, '2023-10-13'),
					(5, 5, 'Minions 2: A Origem de Gru', 35, '2023-10-12'),
					(6, 6, 'The Flash', 45, '2023-10-11'),
					(7, 7, 'Não! Não Olhe!', 55, '2023-10-10'),
					(8, 8, 'O Telefone Preto', 20, '2023-10-09'),
					(1, 9, 'Vesper', 30, '2023-10-08'),
					(5, 10, 'Thor: Amor e Trovão', 40, '2023-10-07');

-- Criando uma tabela Filmes;                    
CREATE TABLE Filmes (
    idFilme INT PRIMARY KEY,
    Genero VARCHAR(255),
    ClassificacaoEtaria VARCHAR(255),
    AnoLancamento INT,
    Nome VARCHAR(255),
    PrecoUnitario DECIMAL(10, 2),
    Produtora VARCHAR(255),
    fk_Clientes_idCliente INT,
    fk_Funcionarios_idFuncionario INT,
    DataVenda DATE,
    FOREIGN KEY (fk_Clientes_idCliente) REFERENCES Clientes(idCliente),
    FOREIGN KEY (fk_Funcionarios_idFuncionario) REFERENCES Funcionarios(idFuncionario)
);

-- Inserindo valores na tabela Filmes;
INSERT INTO Filmes (idFilme, Genero, ClassificacaoEtaria, AnoLancamento, Nome, PrecoUnitario, Produtora, fk_Clientes_idCliente, fk_Funcionarios_idFuncionario, DataVenda) VALUES
					(1, 'Ação', '16 anos', 2023, 'Missão Impossível 7', 29.99, 'Paramount', 1, 1, '2023-10-26'),
					(2, 'Comédia', '12 anos', 2022, 'O Homem do Norte', 19.99, 'Universal', 2, 2, '2023-10-25'),
					(3, 'Drama', '18 anos', 2021, 'Duna', 24.99, 'Warner Bros', 3, 3, '2023-10-24'),
					(4, 'Terror', '18 anos', 2023, 'A Freira 2', 27.99, 'Warner Bros', 4, 4, '2023-10-23'),
					(5, 'Animação', 'Livre', 2022, 'Gato de Botas 2', 17.99, 'DreamWorks', 5, 5, '2023-10-22'),
					(6, 'Aventura', '14 anos', 2023, 'Indiana Jones e a Relíquia do Destino', 34.99, 'Disney', 6, 6, '2023-10-21'),
					(7, 'Ficção Científica', '16 anos', 2021, 'Matrix Resurrections', 22.99, 'Warner Bros', 7, 7, '2023-10-20'),
					(8, 'Romance', '12 anos', 2022, 'Ingresso para o Paraíso', 18.99, 'Universal', 8, 8, '2023-10-19'),
					(9, 'Suspense', '18 anos', 2023, 'O Assassino', 31.99, 'Netflix', 9, 9, '2023-10-18'),
					(10, 'Fantasia', '14 anos', 2022, 'Avatar: O Caminho da Água', 28.99, '20th Century Studios', 10, 10, '2023-10-17'),
					(11, 'Ação', '16 anos', 2023, 'John Wick 4: Baba Yaga', 29.99, 'Lionsgate', 11, 1, '2023-10-16'),
					(12, 'Comédia', '12 anos', 2022, 'Trem-Bala', 19.99, 'Sony Pictures', 12, 2, '2023-10-15'),
					(13, 'Drama', '18 anos', 2021, 'O Beco do Pesadelo', 24.99, 'Searchlight Pictures', 13, 3, '2023-10-14'),
					(14, 'Terror', '18 anos', 2023, 'Fale Comigo', 27.99, 'Diamond Films', 14, 4, '2023-10-13'),
					(15, 'Animação', 'Livre', 2022, 'Minions 2: A Origem de Gru', 17.99, 'Universal', 15, 5, '2023-10-12'),
					(16, 'Aventura', '14 anos', 2023, 'The Flash', 34.99, 'Warner Bros', 16, 6, '2023-10-11'),
					(17, 'Ficção Científica', '16 anos', 2021, 'Não! Não Olhe!', 22.99, 'Universal', 17, 7, '2023-10-10'),
					(18, 'Romance', '12 anos', 2022, 'O Telefone Preto', 18.99, 'Universal', 18, 8, '2023-10-09'),
					(19, 'Suspense', '18 anos', 2023, 'Vesper', 31.99, 'Imagem Filmes', 19, 9, '2023-10-08'),
					(20, 'Fantasia', '14 anos', 2022, 'Thor: Amor e Trovão', 28.99, 'Disney', 20, 10, '2023-10-07');



                    
                    





                    

 
 


 




