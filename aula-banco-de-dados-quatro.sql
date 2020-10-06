

INSERT INTO estrelas.estado
VALUES
('PB', 'Paraíba', 'Nordeste'),
('AM', 'Amazonas', 'Norte');

INSERT INTO estrelas.cidade
VALUES
('Manaus', 69000000, 1802014, true, 'AM', 34362.71, '1669-10-24'),
('Bayeux', 58000000, 99716, false, 'PB', 13975.42, '1959-12-15'),
('Alvarães', 13000290, 14088, false, 'AM', 10000.80, '1981-12-10'),
('Areial', 59000000, 6.470, false, 'PB', 7463.1, '1961-12-10'),
('Santo André', 06000000, 676407, false,'SP', 38408.12, '1553-04-08');

SELECT c.nome, c.estado, c.numero_habitantes
FROM cidade c, estado e
WHERE  c.estado = e.sigla 
AND e.nome IN ('São Paulo', 'Minas Gerais', 'Goiás');

SELECT c.*
FROM cidade c, estado e
WHERE  c.estado = e.sigla 
AND e.nome NOT IN ('São Paulo', 'Minas Gerais', 'Paraíba');

SELECT c.*
FROM cidade c, estado e
WHERE  c.estado = e.sigla 
AND e.nome LIKE 'M%';

SELECT COUNT(*) 
FROM cidade c, estado e
WHERE c.estado = e.sigla 
AND c.numero_habitantes > 400000;

SELECT SUM(c.numero_habitantes) as 'numero de habitantes'
FROM cidade c, estado e
WHERE c.estado = e.sigla 
AND e.regiao = 'Sudeste';

SELECT AVG (c.renda_per_capita)
FROM cidade c, estado e
WHERE c.estado = e.sigla 
AND e.regiao = 'Nordeste';

SELECT MAX(c.numero_habitantes)
FROM cidade c, estado e
WHERE c.estado = e.sigla 
AND e.regiao = 'Centro-Oeste';

SELECT AVG (c.renda_per_capita)
FROM cidade c, estado e
WHERE c.estado = e.sigla 
AND c.capital = true;

SELECT MIN(c.data_fundacao)
FROM cidade c, estado e
WHERE c.estado = e.sigla 
AND e.regiao = 'Sudeste'
AND c.capital = false
AND c.numero_habitantes > 100000;

SELECT AVG(c.renda_per_capita)
FROM cidade c, estado e
WHERE c.estado = e.sigla 
NOT IN  (e.regiao='Sudeste', 'Nordeste')
AND c.data_fundacao > '1500-04-01';








