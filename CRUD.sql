CREATE DATABASE cadastro;
USE cadastro;
CREATE TABLE pessoa (nome CHAR(50), rg VARCHAR(15), cpf VARCHAR(11), limite INT);
SELECT * FROM pessoa;
ALTER TABLE pessoa MODIFY COLUMN nome VARCHAR(100);
ALTER TABLE pessoa MODIFY COLUMN rg VARCHAR(7);
ALTER TABLE pessoa MODIFY COLUMN cpf VARCHAR(11);
ALTER TABLE pessoa MODIFY COLUMN limite INT(10); 
SELECT * FROM pessoa;

INSERT INTO pessoa (nome, rg, cpf, limite) VALUES ("Maria", "2345678", "02212165547", 9000);
INSERT INTO pessoa (nome, rg, cpf, limite) VALUES ("Zefe", "3456789", "03212165547", 7800);

#Selecionar colunas específicas: filtrar a busca;
SELECT nome, cpf FROM pessoa;
SELECT cpf, rg FROM pessoa;
SELECT rg, nome FROM pessoa;

#Inserir Dados
INSERT INTO pessoa (nome, cpf, rg, limite) VALUES ("Domingas Mbambiwa", "09876898788", "9876543", 3008);
INSERT INTO pessoa VALUES ("João", "5456780", "93212165540", 9808); #De maneira Resumida 
INSERT INTO pessoa VALUES ("Tchima", "9876543", "01667599909", 35647);
INSERT INTO pessoa VALUES ("Mariana", "9872243", "01967588909", 3907);
INSERT INTO pessoa VALUES ("Benjamim", "0096543", "01767511109", 87647);
INSERT INTO pessoa VALUES ("Januário", "3876543", "65467599955", 0);

#SELECT com WHERE
SELECT * FROM pessoa WHERE nome = "Domingas Mbambiwa";

#WHERE com UPDATE
#DE MANEIRA ERRADA: Usando estes comandos vc atualiza toda coluna, não tem volta, logo fodeu com tudo!
SET SQL_SAFE_UPDATES = 0; #este comando é importante para fazer update ou deletar; geralmente dá erro quando voce deleta, usando este comando resolve a situação;
UPDATE pessoa SET rg = 0;

#DE MANEIRA CERTA:Por isso é melhor e aconselhável usar WHERE
UPDATE pessoa SET rg = 0987654 WHERE nome = "Daniel Tchikeva";

#WHERE com DELETE
DELETE FROM cadastro WHERE nome = "João"; #Que doidera kkkkk, eu tentando apagar a tabela deste geito; cadastro é um banco de dados;
DELETE FROM pessoa WHERE nome =  "Tchima";
SELECT * FROM pessoa;

DELETE FROM pessoa WHERE nome = "Daniel Tchikeva";
SELECT * FROM pessoa;
DELETE FROM pessoa WHERE limite >= 4000;
DELETE FROM pessoa WHERE limite > 50000;
SELECT * FROM pessoa;
SELECT * FROM pessoa WHERE nome = "Januário";
DELETE FROM pessoa WHERE nome = "Januário";
SELECT * FROM pessoa;

