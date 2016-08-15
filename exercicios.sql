1. Quantidade de cidades por estado

Resposta 1:
SELECT e.nome, e.sigla, COUNT(c.id)
FROM cidade c, estado e 
WHERE e.sigla = c.sigla_estado
GROUP BY e.nome, e.sigla 
ORDER by e.nome desc

Resposta 2:
SELECT e.nome, e.sigla, COUNT(c.id) 
FROM cidade c JOIN estado e ON (e.sigla = c.sigla_estado) 
GROUP BY e.nome, e.sigla 
ORDER by e.nome desc 



2. Quantidade de localidades por estado

Resposta 1:
SELECT e.nome, e.sigla, COUNT(r.cep) 
FROM regiao r, cidade c, estado e 
WHERE 
	r.cidade_id = c.id 
	AND c.sigla_estado = e.sigla 
GROUP BY e.nome, e.sigla


Resposta 2:
SELECT e.nome, e.sigla, COUNT(r.cep) 
FROM
	regiao r 
	INNER JOIN cidade c ON (r.cidade_id = c.id)
    INNER JOIN estado e ON (c.sigla_estado = e.sigla) 
GROUP BY e.nome, e.siglav

3. 

SELECT c.id, c.nome, COUNT(r.cep) 
FROM regiao r, cidade c 
WHERE r.cidade_id = c.id 
GROUP BY c.id, c.nome HAVING COUNT(r.cep) > 5 
ORDER BY c.nome 


