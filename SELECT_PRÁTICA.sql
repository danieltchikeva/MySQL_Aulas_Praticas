USE sakila;
SELECT * FROM sakila.payment;
SELECT * FROM sakila.rental;
SELECT * FROM sakila.inventory;
SELECT * FROM sakila.actor;

SELECT * FROM sakila.film;
SELECT * FROM sakila.country;
SELECT * FROM sakila.category;

#-----------------Operadores Lógicos----------------------------------
SELECT * FROM sakila.rental;
SELECT * FROM rental WHERE customer_id >= 500;
SELECT * FROM rental WHERE customer_id = 550;
SELECT * FROM sakila.actor;
SELECT * FROM sakila.language;
#-----------------DISTINT----------------------------------
SELECT DISTINCT name FROM category;

#-----------------OPERADOR LÓGICO AND----------------------------------
SELECT * FROM actor WHERE actor_id >=1 AND last_name = "Davis";
SELECT * FROM actor WHERE last_name = "Davis";

SELECT * FROM category WHERE country = "Angola" AND amount >=5;


#-----------------INTRUÇÃO ORDER BY----------------------------------
SELECT * FROM customer ORDER BY customer_id DESC;

#-----------------INSTRUÇÃO LIMIT----------------------------------
SELECT * FROM customer ORDER BY customer_id DESC LIMIT 15;



