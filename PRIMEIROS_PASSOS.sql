CREATE DATABASE computador;

SHOW DATABASES;


DROP DATABASE computador;

USE primeirodb;

CREATE TABLE governador (rua VARCHAR (15), numero_populacao INT (30));

DROP TABLE governador; 

INSERT INTO produtos(nome, sku, informacoes) VALUES ("Mouse Gamer", "MG77", "Um mouse de alta tecnologia, fabricado no polo industrial tecnológico do Lobito");
SELECT * FROM produtos;

INSERT INTO produtos (nome, sku, informacoes) VALUES ("Notebook Asus F35", "AF35", "Notebook altamente potente, com um processador de última geração");

SELECT * FROM produtos; 


CREATE TABLE servidores (nome VARCHAR (15), espaco_disco INT (30), ligado BOOL);
#Inserir dados na tabela
INSERT INTO servidores (nome, espaco_disco, ligado) VALUES ("servidor 1", 12338491, 0);
INSERT INTO servidores (nome, espaco_disco, ligado) VALUES ("servidor 2", 1733834491, 1);
INSERT INTO servidores (nome, espaco_disco, ligado) VALUES ("servidor 4", 123038491, 0);
INSERT INTO servidores (nome, espaco_disco, ligado) VALUES ("servidor 3", 123338491, 1);

SELECT * FROM servidores;

#Criar, Inserir e Selecionar tabelas
CREATE TABLE aniversarios (nome VARCHAR (100), data_nascimento DATE);

INSERT INTO aniversarios (nome, data_nascimento) VALUES ("Sheila de Sant'Ana", "1962-05-11");
SELECT * FROM aniversarios;

/* Alterar tabelas*/
ALTER TABLE pessoas ADD COLUMN profissao VARCHAR (100);

