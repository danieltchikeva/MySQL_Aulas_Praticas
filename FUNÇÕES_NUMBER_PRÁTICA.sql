###############################     CEIL     ###########################
USE sakila;
SELECT amount, CEIL(amount) AS arredondado FROM payment;

###############################     COUNT     ###########################
SELECT COUNT(*) FROM language;

SELECT COUNT(*) AS contagem_de_registros FROM customer;

###############################     FLOOR     ###########################
SELECT amount, CEIL(amount) AS para_cima, FLOOR(amount) AS para_baixo
FROM payment;

###############################     MAX     ###########################
SELECT MAX(amount) AS maior_pagamento 
FROM payment;

###############################     MIN     ###########################
SELECT MAX(amount) AS maior_pagamento, MIN(amount) AS menor_pagamento
FROM payment;

###############################     SUM    ###########################
SELECT SUM(amount) AS soma_de_pagamentos
FROM payment;