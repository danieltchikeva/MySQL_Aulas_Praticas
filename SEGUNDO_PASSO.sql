ALTER TABLE pessoas ADD COLUMN profissao VARCHAR (100);
INSERT INTO pessoas (nome, cpf, descricao, profissao) VALUES ("Marcela", 01312457786, "Mulher competente", "Operadora de Loja");
SELECT * FROM pessoas;

ALTER TABLE  pessoas ADD COLUMN nome_empresa VARCHAR (50);
INSERT INTO pessoas (nome_empresa) VALUES ("Assaí Galeão");

SELECT * FROM pessoas;

CREATE TABLE funcionarios (nome VARCHAR(100), data_nascimento DATE); 
SHOW DATABASES;
DROP TABLE funcionarios; 
ALTER TABLE pessoas DROP COLUMN nome_empresa;
SELECT * FROM pessoas; 

#Adicionando coluna de maneira errada
ALTER TABLE pessoas ADD COLUMN comunidade DATE;

#Modificando coluna (tipo de dado)
INSERT INTO pessoas(comunidade) VALUES ("Stela Maris");
SELECT * FROM pessoas;

ALTER TABLE pessoas MODIFY COLUMN comunidade CHAR (50);
INSERT INTO pessoas(comunidade) VALUES ("Stela Maris");
SELECT * FROM pessoas;