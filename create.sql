DROP TABLE IF EXISTS order_item;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS pizza;
DROP TABLE IF EXISTS pizza_category;
DROP TABLE IF EXISTS pizza_size;
DROP TABLE IF EXISTS cust_order;
DROP TABLE IF EXISTS customer;

CREATE TABLE orders
(
    id bigserial PRIMARY KEY,
    order_date date DEFAULT CURRENT_DATE,
    order_time time without time zone DEFAULT CURRENT_TIME
);


CREATE TABLE pizza
(
    id CHAR(50),
    category CHAR(50) NOT NULL,
    size CHAR(50) NOT NULL,
    name CHAR(50) NOT NULL,
    price real NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE order_item
(
    id bigserial,
    order_id integer NOT NULL,
    pizza_id CHAR(50) NOT NULL,
    quantity integer NOT NULL DEFAULT 1,
    PRIMARY KEY (id),
    FOREIGN KEY (order_id) REFERENCES public.orders (id),
    FOREIGN KEY (pizza_id) REFERENCES pizza (id)
);

CREATE TABLE customer
(
    id bigserial,
    cust_name CHAR(50) NOT NULL,
    cust_surname CHAR(50) NOT NULL,
	cust_phone CHAR(13),
    PRIMARY KEY (id)
);

CREATE TABLE cust_order
(
    id bigserial,
    cust_id integer NOT NULL,
    order_id integer NOT NULL,
    PRIMARY KEY (id),
	FOREIGN KEY (cust_id) REFERENCES customer (id),
    FOREIGN KEY (order_id) REFERENCES orders (id)
);