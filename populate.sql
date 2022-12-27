INSERT INTO pizza (id, category, size, name, price)
	VALUES 
	('hawaiian_m', 'Classic', 'M', 'The Hawaiian Pizza', 13.25),
	('classic_dlx_m', 'Classic', 'M', 'The Classic Deluxe Pizza', 16),
	('five_cheese_l', 'Veggie', 'L', 'The Five Cheese Pizza', 18.5),
	('ital_supr_l', 'Supreme', 'L', 'The Italian Supreme Pizza', 20.75),
	('mexicana_m', 'Veggie', 'M', 'The Mexicana Pizza', 16),
	('thai_ckn_l', 'Chicken', 'L', 'The Thai Chicken Pizza', 20.75),
	('ital_supr_m', 'Supreme', 'M', 'The Italian Supreme Pizza', 16.5),
	('prsc_argla_l', 'Supreme', 'L', 'The Prosciutto and Arugula Pizza', 20.75);
	
INSERT INTO orders(order_date, order_time)
	VALUES ('01-01-2015', '11:38:36'), ('01-01-2015', '11:57:40'), ('01-01-2015', '11:57:40');
	
INSERT INTO order_item (order_id, pizza_id, quantity)
	VALUES (1, 'hawaiian_m', 1),
	(2, 'classic_dlx_m', 1),
	(2, 'five_cheese_l', 1), 
	(2, 'ital_supr_l', 1),
	(2, 'mexicana_m', 1),
	(2, 'thai_ckn_l', 1),
	(3, 'ital_supr_m', 1),
	(3, 'prsc_argla_l', 1);
	
INSERT INTO customer(cust_name, cust_surname, cust_phone)
	VALUES ('Bob', 'Chikiki', NULL), ('Danilo', 'Katerinich', '+380689740937');
	
INSERT INTO cust_order(cust_id, order_id)
	VALUES (1, 1), (2, 2), (2, 3);