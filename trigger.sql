--Трігер видаляє всі товари замовлення після видалення замовлення з бази
DROP TRIGGER IF EXISTS deleted_order ON orders;
DROP FUNCTION IF EXISTS remove_order_item;

CREATE FUNCTION remove_order_item() RETURNS TRIGGER
LANGUAGE 'plpgsql'
AS
$$
   BEGIN 
      DELETE FROM order_item WHERE order_item.order_id=OLD.id;
      RETURN OLD;
   END;
$$;

CREATE TRIGGER deleted_order
BEFORE DELETE ON orders
FOR EACH ROW EXECUTE FUNCTION remove_order_item();