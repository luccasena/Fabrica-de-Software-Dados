-- Fábrica de Software - 2025.01 - Ciência de Dados
--         Banco de Dados - DESAFIO FINAL
-- Lucca de Sena Barbosa - P3 - Ciências da Computação 

-- 3.1. Realizar 01 consulta envolvendo ações de agregação ou agrupamentos para cada tabela [Variar as funções e atributos consultados];

-- 3.1.1: Tabela Clientes
SELECT COUNT(*) 
FROM clientes;
-- Insight: Na base de dados, temos ao total 20 clientes cadastrados.

-- 3.1.2: Tabela Filmes
SELECT ClassificacaoEtaria, COUNT(ClassificacaoEtaria)
FROM filmes 
GROUP BY ClassificacaoEtaria;
-- Insight: Na base de dados, temos mais filmes com classificação etária de 18 anos do que as demais.

-- 3.1.3: Tabela Fornece
SELECT Filme, DataFornecimento
FROM Fornece
GROUP BY DataFornecimento;

-- Insight: Mostra o filme fornecido em determinado dia.

-- 3.1.4: Tabela Fornecedor
SELECT AVG(TempoContratoMeses)
FROM fornecedor;
-- Insight: Tempo médio de Contrato pelo fornecedor em meses.

-- 3.1.5: Tabela unidadesLoja
SELECT AVG(Faturamento)
FROM unidadesloja;
-- Insight: Faturamento médio de cada unidade em atividade.

-- 3.2. Realizar 02 operações de JOIN entre as tabelas [O tipo de JOIN é critério do participante];

SELECT NomeCliente, NomeFilmes, PrecoUnitario
FROM Clientes 
JOIN Filmes on idCliente = fk_Clientes_idCliente;
-- Insight: Mostra o filme que o cliente comprou e o preço unitário;

SELECT NomeFuncionario, Bairro
FROM unidadesLoja
JOIN funcionarios on idloja = fk_UnidadesLoja_idLoja;
-- Insight: Mostra o nome dos funcionários que trabalham nos respectivos bairros;


