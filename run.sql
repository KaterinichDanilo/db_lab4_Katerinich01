--Перевірка роботи функції
SELECT cust_amount_orders('Danilo', 'Katerinich');

--Перевірка роботи процедури
CALL add_pizza('pizza_gorilla_m', 'Classic', 'M', 'Gorilla_Classic', 17.89);
SELECT * FROM pizza;

--перевірка трігера
DELETE FROM orders WHERE orders.id=2;
SELECT * FROM orders;
SELECT * FROM order_item;