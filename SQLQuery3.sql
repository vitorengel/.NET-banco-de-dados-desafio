-- 1
SELECT 
	Nome,
	Ano
FROM Filmes


-- 2
SELECT 
	Nome,
	Ano
FROM Filmes
ORDER BY Ano ASC

-- 3
SELECT * FROM Filmes
WHERE Nome LIKE '%De Volta para o Futuro%'

-- 4
SELECT * FROM Filmes
WHERE Ano LIKE '%1997%'

-- 5
SELECT * FROM Filmes
WHERE Ano > 2000

-- 6
SELECT * FROM Filmes
WHERE Duracao BETWEEN 100 AND 150
ORDER BY Duracao ASC

-- 7
SELECT
	Ano,
	COUNT(*) AS Quantidade FROM Filmes 
GROUP BY Ano
ORDER BY COUNT(*) DESC

-- 8 conforme enunciado
SELECT 
	PrimeiroNome,
	UltimoNome
FROM Atores
WHERE Genero LIKE '%M%'

-- 8 conforme tabela de amostra
SELECT * FROM Atores
WHERE Genero LIKE '%M%'

-- 9 conforme enunciado
SELECT 
	PrimeiroNome,
	UltimoNome
FROM Atores
WHERE Genero LIKE '%F%'
ORDER BY PrimeiroNome

-- 9 conforme tabela de amostra
SELECT * FROM Atores
WHERE Genero LIKE '%F%'
ORDER BY PrimeiroNome

-- 10
SELECT 
  Filmes.Nome,
  Generos.Genero
FROM Filmes
INNER JOIN Generos
ON Filmes.id = Generos.id

-- 11
SELECT 
  Filmes.Nome,
  Generos.Genero
FROM Filmes
INNER JOIN Generos
ON Filmes.id = Generos.id
WHERE Generos.Genero = 'Mistério'

-- 12
SELECT
	Filmes.Nome,
	Atores.PrimeiroNome,
	Atores.UltimoNome,
	ElencoFilme.Papel
FROM Filmes
INNER JOIN Atores on Filmes.Id = Atores.Id
INNER JOIN ElencoFilme on Atores.id = ElencoFilme.Id