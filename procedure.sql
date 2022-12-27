DROP PROCEDURE add_pizza;

CREATE OR REPLACE PROCEDURE add_pizza(pizza_id CHAR(50), pizza_category CHAR(50),
									  pizza_size CHAR(10), pizza_name CHAR(50), pizza_price REAL)

LANGUAGE'plpgsql'
AS $$
   DECLARE      

   BEGIN
      INSERT INTO pizza(id, category, size, "name", price)
      VALUES(pizza_id, pizza_category, pizza_size, pizza_name, pizza_price);
   END;
$$
