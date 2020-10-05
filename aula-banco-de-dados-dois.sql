CREATE TABLE cidade (
    nome VARCHAR(20),
    cep INT NOT NULL PRIMARY KEY,
    numero_habitantes INT(12),
    eh_capital BOOLEAN,
    estado VARCHAR(2) NOT NULL,
    renda_percapita DECIMAL(7 , 2 ),
    data_fundacao DATE
);

INSERT INTO estrelas.cidade (nome, cep, numero_habitantes, eh_capital,
 estado, renda_percapita, data_fundacao)
VALUES
('Brasília', 71691000, 2570160, true, 'DF', 2686.00, '1960-04-21'),
('Alcobaça', 45910000, 21271, false, 'BA', 1870.00, '1772-11-12'),
('Bonito', 79290000, 19587 , false, 'MS', 2181.00, '1948-10-02'),
('Turiúba', 15280000, 1930, false, 'SP', 2389.00, '1822-09-07'),
('São Paulo', 01034000, 11253503, true, 'SP', 4467.70, '1822-09-07');

DELETE FROM estrelas.cidade 
WHERE
    cep = 01034000;

UPDATE estrelas.cidade 
SET 
    numero_habitantes = 23398
WHERE
    cep = 45910000;

UPDATE estrelas.cidade 
SET 
    numero_habitantes = 2123
WHERE
    cep = 15280000;

CREATE TABLE estado (
    sigla VARCHAR(2) NOT NULL PRIMARY KEY,
    nome VARCHAR(19)
);

INSERT INTO estrelas.estado (nome, sigla)
VALUES
('Distrito Federal', 'DF'),
('Bahia', 'BA'),
('Mato Grosso do Sul', 'MF'),
('São Paulo', 'SP');

SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT;
SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS;
SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION;
SET NAMES utf8;
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0;

ALTER TABLE estrelas.cidade
ADD CONSTRAINT estado_fk
FOREIGN KEY (estado)
REFERENCES estrelas.estado (sigla);

ALTER TABLE estrelas.estado
ADD regiao VARCHAR(12);
