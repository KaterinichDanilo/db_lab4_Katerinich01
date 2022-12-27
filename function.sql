DROP FUNCTION IF EXISTS cust_amount_orders;

CREATE OR REPLACE FUNCTION cust_amount_orders(name character(50), surname character(50))
RETURNS INTEGER
LANGUAGE 'plpgsql'

AS $$
   BEGIN
      RETURN (SELECT COUNT(*) FROM customer
			  LEFT JOIN cust_order ON cust_order.cust_id = customer.id
			  WHERE customer.cust_name=name AND customer.cust_surname=surname
			 );
   END;
$$

SELECT cust_amount_orders('Danilo', 'Katerinich')
