USE sakila;
#################    CHAR_LENGTH    ################################
SELECT first_name, CHAR_LENGTH(first_name) AS qtd_chares, last_name, CHAR_LENGTH(last_name) AS qtd_chares FROM actor

#FAZENDO DELIMITAÇÃO COM CHAR_LENGTH
SELECT first_name, CHAR_LENGTH(first_name) AS qtd_chares, last_name, CHAR_LENGTH(last_name) AS qtd_chares 
FROM actor
WHERE CHAR_LENGTH(first_name) > 10;

SELECT * FROM sakila.address;

SELECT address_id, CHAR_LENGTH(address_id) AS qtd_chares, address, CHAR_LENGTH(address) AS qtd_chares 
FROM address
ORDER BY (address_id) DESC;

SELECT address_id, address, postal_code, CHAR_LENGTH(postal_code) AS qtd_char
FROM address
ORDER BY address_id DESC;

####################################     CONCAT   ###########################################
USE empresa;
SELECT * FROM pessoas;

SELECT CONCAT(nome, " é uma ", descricao, " cuja profissão é ", profissao, " além do mais ela é muito divertida!") AS Perfil_Brilhante
FROM pessoas;

USE sakila;
SELECT * FROM actor;

SELECT CONCAT(first_name, " ", last_name) AS Nome_completo_dos_atores
FROM actor;

##############################      CONCAT_WS      ###############################
SELECT CONCAT_WS("-", first_name, last_name) AS Nome_dos_atores
FROM actor;

######################    FORMAT #####################################
SELECT customer_id, amount, FORMAT(amount, 1) AS Valor_arredondado
FROM payment;

#########################     INSTR     ###########################
SELECT email, INSTR(email, "@")
FROM customer;

##################### LCASE= minúsculo ############################
SELECT first_name, last_name, LCASE(CONCAT(first_name, " ", last_name)) AS Nome_dos_atores_em_minúsculo
FROM actor;

SELECT country, LCASE(country) AS Países_em_minúsculo
FROM country;
##################### UCASE= maiúscula ############################
SELECT first_name, last_name, UCASE(CONCAT(first_name, " ", last_name)) AS Nome_dos_atores_em_minúsculo
FROM actor;

SELECT country, UCASE(country) AS Países_em_maiúsculo
FROM country;

###############################   LEFT    ##########################
SELECT title, LEFT(title, 4) FROM film WHERE film_id = 1;

###############################   RIGHT    ##########################
SELECT title, RIGHT(title, 4) FROM film WHERE film_id = 1;

############################   REPLACE    ##########################
SELECT REPLACE(name, "Action", "Ação e Aventuras") AS nome FROM category;

###############################   SUBSTR    ##########################
SELECT title, SUBSTR(title, 3, 2) FROM film WHERE film_id = 1;

SELECT last_update, SUBSTR(last_update, 9, 2) AS dia,
SUBSTR(last_update, 6, 2) AS mês,
SUBSTR(last_update, 1, 4) AS ano
FROM actor;