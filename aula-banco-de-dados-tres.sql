SELECT c.nome, c.renda_per_capita
FROM cidade c
WHERE nro_habitantes > 5000;

SELECT c.*
FROM cidade c
WHERE c.data_fundacao > '1432-03-12';

SELECT c.*
FROM cidade c
WHERE c.cep = 38180000;

SELECT c.nome
FROM cidade c
WHERE c.estado = 'sp';

SELECT c.*
FROM cidade c
WHERE C.nro_habitantes > 100000;

SELECT c.nome
FROM cidade c
WHERE c.capital = true
AND c.renda_per_capita > 30000;

SELECT c.nome, e.nome
FROM cidade c, estado e
WHERE (c.estado = e.sigla) = 'sp';

SELECT e.regiao, e.nome, c.nome, c.nro_habitantes
FROM cidade c, estado e
WHERE c.renda_per_capita > 20000 
AND c.capital = false;

SELECT c.*
FROM cidade c, estado e
WHERE c.estado = e.sigla
AND e.regiao = 'Sudeste';

SELECT c.nome, c.nro_habitantes
FROM cidade c, estado e
WHERE c.estado = e.sigla
AND (c.capital = false AND e.sigla <> 'mg') 
AND c.renda_per_capita >15000;
