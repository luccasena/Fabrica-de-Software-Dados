-- Fábrica de Softare 2025.01 - Dia 2

SELECT * FROM membros;

-- 8. Funções na consulta:
SELECT count(*) 
FROM membros
WHERE Classification = 'Individual';

SELECT State, Classification, sum(Courses)
FROM membros 
GROUP BY State, Classification;