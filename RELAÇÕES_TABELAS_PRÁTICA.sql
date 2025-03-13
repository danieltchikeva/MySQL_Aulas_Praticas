-- CRIAÇÃO DE DB, TABELAS E COLUNAS
CREATE DATABASE relacoes;
USE relacoes;

###############################     RELACIONAMENTO UM PARA UM    ###########################
CREATE TABLE estudantes(
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nome VARCHAR (100),
turma VARCHAR(5)
);

CREATE TABLE contatos(
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
telefone VARCHAR (20),
estudante_id INT NOT NULL,
FOREIGN KEY (estudante_id) REFERENCES estudantes(id)
);

SELECT * FROM estudantes;
SELECT * FROM contatos;

DELETE FROM estudantes WHERE id= 7;

-- INSERIR DADOS
INSERT INTO estudantes (nome, turma) VALUES ("Daniel Tchikeva", "B");
INSERT INTO estudantes (nome, turma) VALUES ("Francisco Tchikeva", "302b");
INSERT INTO estudantes (nome, turma) VALUES ("Maria", "202b");
INSERT INTO estudantes (nome, turma) VALUES ("Domingas", "102c");
INSERT INTO estudantes (nome, turma) VALUES ("António", "402a");

INSERT INTO contatos(telefone, estudante_id) VALUES ("(24)981587684", 1);
INSERT INTO contatos(telefone, estudante_id) VALUES ("(21)951587287", 2);

SELECT estudantes.nome, estudantes.turma, contatos.telefone
FROM estudantes
JOIN contatos ON contatos.estudante_id = estudantes.id;

###############################     RELACIONAMENTO UM PARA MUITOS    ###########################
CREATE TABLE cliente(
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nome VARCHAR(100),
data_nascimento DATE
);

CREATE TABLE pedidos(
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
qtd_itens INT(10),
total FLOAT,
cliente_id INT NOT NULL,
FOREIGN KEY (cliente_id) REFERENCES cliente(id)
);

SELECT * FROM cliente;
SELECT * FROM pedidos;

INSERT INTO cliente (nome, data_nascimento) VALUES ("Roberto", "1998-11-21");
INSERT INTO cliente (nome, data_nascimento) VALUES ("Carlos", "2001-09-12");

INSERT INTO pedidos (qtd_itens, total, cliente_id) VALUES (3, 67, 1);
INSERT INTO pedidos (qtd_itens, total, cliente_id) VALUES (6, 136, 2);
INSERT INTO pedidos (qtd_itens, total, cliente_id) VALUES (5, 128.30, 2);
INSERT INTO pedidos (qtd_itens, total, cliente_id) VALUES (2, 56.10, 2);
INSERT INTO pedidos (qtd_itens, total, cliente_id) VALUES (4, 112.40, 2);

-- PEDIDOS DO CARLOS
SELECT cliente.nome, pedidos.id AS pedido_id
FROM cliente
JOIN pedidos ON pedidos.cliente_id = cliente.id
WHERE cliente.id = 2;

-- PEDIDOS DO ROBERTO
SELECT cliente.nome, pedidos.id AS pedido_id
FROM cliente
JOIN pedidos ON pedidos.cliente_id = cliente.id
WHERE cliente.id = 1;

###############################     RELACIONAMENTO MUITOS PARA MUITOS    ###########################
CREATE TABLE materias (
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nome VARCHAR(100)
);

-- CRIANDO TABELA PIVOT(possuem apenas colunas com referências)
CREATE TABLE estudante_materia (
estudante_id INT NOT NULL,
materia_id INT NOT NULL,
FOREIGN KEY (estudante_id) REFERENCES estudantes(id),
FOREIGN KEY (materia_id) REFERENCES materias(id)
);

INSERT INTO materias (nome) VALUES ("Riqueza 1");
INSERT INTO materias (nome) VALUES ("Riqueza 2");
INSERT INTO materias (nome) VALUES ("Planejamento da vida");
INSERT INTO materias (nome) VALUES ("Finanças 1");

SELECT * FROM materias;

INSERT INTO estudante_materia (estudante_id, materia_id) VALUES (5, 2);
INSERT INTO estudante_materia (estudante_id, materia_id) VALUES (3, 1);
INSERT INTO estudante_materia (estudante_id, materia_id) VALUES (3, 2);
INSERT INTO estudante_materia (estudante_id, materia_id) VALUES (1, 2);
INSERT INTO estudante_materia (estudante_id, materia_id) VALUES (1, 1);
INSERT INTO estudante_materia (estudante_id, materia_id) VALUES (1, 3);
INSERT INTO estudante_materia (estudante_id, materia_id) VALUES (1, 4);
INSERT INTO estudante_materia (estudante_id, materia_id) VALUES (2, 2);
INSERT INTO estudante_materia (estudante_id, materia_id) VALUES (2, 4);

-- SELECT COM JOIN
SELECT * FROM estudantes
JOIN estudante_materia ON estudante_materia.estudante_id = estudantes.id
AND estudante_materia.materia_id = 4;

SELECT estudantes.nome, estudante_materia.materia_id AS "Riqueza 1" FROM estudantes
JOIN estudante_materia ON estudante_materia.estudante_id = estudantes.id
AND estudante_materia.materia_id = 1;

SELECT estudantes.nome, estudante_materia.materia_id AS "Planejamento" FROM estudantes
JOIN estudante_materia ON estudante_materia.estudante_id = estudantes.id
AND estudante_materia.materia_id = 3;