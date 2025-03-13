USE sakila;
###############################     ADDDATE     ###########################
SELECT last_update, ADDDATE(last_update, "10 DAYS") AS Data_adicionada FROM actor;

SELECT last_update, ADDDATE(last_update, "10 DAYS") AS Data_adicionada, 
ADDDATE(last_update, INTERVAL 2 MONTH) AS Mês_adicionado,
ADDDATE(last_update, INTERVAL 5 YEAR) AS Ano_adicionado,
ADDDATE(last_update, INTERVAL -10 YEAR) AS Ano_retirado
FROM actor;

###############################     DATEDIFF     ###########################
SELECT DATEDIFF(ADDDATE(last_update, INTERVAL 1 MONTH), last_update) FROM actor;

SELECT DATEDIFF(ADDDATE(last_update, INTERVAL 1 YEAR), last_update) FROM actor;

###############################     ADDTIME     ###########################
SELECT *, ADDTIME(last_update, "7 02:35:15") AS Tempo_adicionado
FROM actor
WHERE actor_id > 20;

###############################     DATEFORMAT     ###########################
SELECT DATE_FORMAT(last_update, "%Y") AS ano,
DATE_FORMAT(last_update, "%d/%m/%Y") AS nosso_formato_de_data,
last_update
FROM actor;

###############################     DAY     ###########################
SELECT last_update, DAY(last_update) AS dia FROM actor;

###############################     DAYOFWEEK     ###########################
SELECT last_update, DAYOFWEEK(last_update) FROM actor;

SELECT last_update, DAYOFWEEK(last_update), DAYOFWEEK(ADDDATE(last_update, "2")) AS novo_dia FROM actor;

###############################     DAYOFYEAR     ###########################
SELECT last_update, DAYOFYEAR(last_update) AS dia_do_ano FROM actor;

SELECT last_update, DAYOFYEAR(last_update), DAYOFYEAR(ADDDATE(last_update, INTERVAL 3 MONTH)) AS novo_dia FROM actor;

###############################     WEEKOFYEAR     ###########################
SELECT last_update, WEEKOFYEAR(last_update) AS semana_do_ano FROM actor;

SELECT last_update, WEEKOFYEAR(last_update) AS semana_do_ano, WEEKOFYEAR(ADDDATE(last_update, INTERVAL 3 MONTH)) FROM actor;

###############################     MONTH     ###########################
SELECT last_update, MONTH(last_update) AS mês_do_ano FROM actor;