SELECT actor.first_name AS Nome, actor.last_name AS Sobrenome, payment.amount AS Quantidade_Recebido
FROM actor
INNER JOIN payment
ON actor.act_no = payment.pay_no;