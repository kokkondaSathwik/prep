CREATE DATABASE ecom;
USE ecom;


CREATE TABLE customers(
id INT PRIMARY KEY,
name VARCHAR(50)
);

INSERT INTO customers(id,name)
VALUES
(1,"a"),
(2,"b"),
(3,"c"),
(4,"d"),
(5,"e");

SELECT * FROM customers;


CREATE TABLE orders_1(  -- Renamed from `order` to `orders`
id INT PRIMARY KEY,
ordername VARCHAR(50),
FOREIGN KEY (id) REFERENCES customers(id)
);

INSERT INTO orders_1(id,ordername)
VALUES
(2,"fruits"),
(3,"ball"),
(4,"cat");

SELECT * FROM orders_1;

SELECT customers.id,customers.name,orders_1.ordername FROM  customers
INNER JOIN orders_1
ON customers.id=orders_1.id;

-- Left join
SELECT customers.id,customers.name,orders_1.ordername FROM customers
LEFT JOIN orders_1
ON customers.id=orders_1.id;

-- Right Join
SELECT orders_1.id,orders_1.ordername,customers.name FROM orders_1
RIGHT JOIN customers
ON orders_1.id=customers.id;

-- Full Join(left join+right Join)
-- Mysql doesnot support full join instead we can use combination of left,right and union to achieve result
SELECT customers.id,customers.name,orders_1.ordername FROM customers
LEFT JOIN orders_1
ON customers.id=orders_1.id
UNION
SELECT customers.id,customers.name,orders_1.ordername  FROM orders_1
RIGHT JOIN customers
ON orders_1.id=customers.id;

SELECT * FROM customers
LEFT JOIN orders_1
ON customers.id=orders_1.id
UNION
SELECT *  FROM orders_1
RIGHT JOIN customers
ON orders_1.id=customers.id;

-- CROSS JOIN
SELECT customers.id,customers.name,orders_1.ordername FROM customers
CROSS JOIN orders_1;

































