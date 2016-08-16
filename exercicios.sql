-- 1. Quantidade de cidades por estado
-- Resposta 1:
SELECT e.nome, e.sigla, COUNT(c.id)
FROM cidade c, estado e 
WHERE e.sigla = c.sigla_estado
GROUP BY e.nome, e.sigla 
ORDER by e.nome desc;

-- Resposta 2:
SELECT e.nome, e.sigla, COUNT(c.id) 
FROM cidade c JOIN estado e ON (e.sigla = c.sigla_estado) 
GROUP BY e.nome, e.sigla 
ORDER by e.nome desc;


---------------------------------------------------------------

-- 2. Quantidade de localidades por estado
-- Resposta 1:
SELECT e.nome, e.sigla, COUNT(r.cep) 
FROM regiao r, cidade c, estado e 
WHERE 
	r.cidade_id = c.id 
	AND c.sigla_estado = e.sigla 
GROUP BY e.nome, e.sigla;


-- Resposta 2:
SELECT e.nome, e.sigla, COUNT(r.cep) 
FROM
	regiao r 
	INNER JOIN cidade c ON (r.cidade_id = c.id)
    INNER JOIN estado e ON (c.sigla_estado = e.sigla) 
GROUP BY e.nome, e.sigla;


---------------------------------------------------------------


-- 3. Cidades com mais de 5 localidades
-- Resposta 1:
SELECT c.id, c.nome, COUNT(r.cep) 
FROM regiao r, cidade c 
WHERE r.cidade_id = c.id 
GROUP BY c.id, c.nome HAVING COUNT(r.cep) > 5 
ORDER BY c.nome; 

--Resposta 2:
SELECT c.id, c.nome, COUNT(r.cep) 
FROM regiao r JOIN cidade c ON (r.cidade_id = c.id)
GROUP BY c.id, c.nome HAVING COUNT(r.cep) > 5 
ORDER BY c.nome; 


---------------------------------------------------------------

--4. Maior ID da tabela de cidades
-- Resposta:
 SELECT MAX(c.id) 
 FROM cidade c;


---------------------------------------------------------------

--5. Estados com mais de 5 localidades
-- Resposta 1:
SELECT e.sigla, e.nome, COUNT(r.cep) 
FROM regiao r, cidade c, estado e 
WHERE r.cidade_id = c.id
	AND c.sigla_estado = e.sigla 
GROUP BY e.sigla, e.nome HAVING COUNT(r.cep) > 5 
ORDER BY e.nome; 

-- Resposta 2:
SELECT e.sigla, e.nome, COUNT(r.cep) 
FROM regiao r JOIN cidade c ON (r.cidade_id = c.id)
			  JOIN estado e ON (c.sigla_estado = e.sigla)
GROUP BY e.sigla, e.nome HAVING COUNT(r.cep) > 5 
ORDER BY e.nome; 


---------------------------------------------------------------
