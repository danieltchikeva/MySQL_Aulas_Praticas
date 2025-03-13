CREATE DATABASE banco;
SHOW DATABASES;
USE banco;
CREATE TABLE conta (
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nome VARCHAR (15) NOT NULL,
sobrenome VARCHAR (15) NOT NULL,
saldo INT NOT NULL,
data_nascimento DATE NOT NULL
);

SELECT * FROM conta.saldo;
INSERT INTO conta (nome, sobrenome, saldo, data_nascimento) VALUES ("Daniel", "Tchikeva", 400000, "1994-12-09");
INSERT INTO conta (nome, sobrenome, saldo, data_nascimento) VALUES ("Francisco", "Passo", 340000, "1999-11-04");
INSERT INTO conta (nome, sobrenome, saldo, data_nascimento) VALUES ("Domingas", "Mbambiwa", 89000, "1985-12-05");
INSERT INTO conta (nome, sobrenome, saldo, data_nascimento) VALUES ("Margarida", "Tiapo", 97000, "1990-09-09");

CREATE INDEX index_saldo
ON conta (saldo);

SELECT * FROM banco.conta;

