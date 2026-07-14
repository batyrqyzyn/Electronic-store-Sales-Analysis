--1.Total number of orders:
SELECT * FROM orders;
--2.Total number of products sold:
SELECT SUM(quantity) FROM orders_details
  --доп
SELECT products.name, SUM(orders_details.quantity) FROM products
INNER JOIN orders_details
ON products.id = orders_details.product_id
GROUP BY products.name;
--3.Average number of products per order:
SELECT AVG(quantity) FROM orders_details
--4.ow many purchases did each customer make?
SELECT customers.first_name, SUM(orders_details.quantity) FROM customers
LEFT JOIN orders
ON customers.id = orders.customer_id
INNER JOIN orders_details
ON orders.order_id = orders_details.order_id
GROUP BY customers.first_name;
--5.Which customer placed the most orders?
SELECT customers.first_name, SUM(orders_details.quantity) FROM customers
LEFT JOIN orders
ON customers.id = orders.customer_id
INNER JOIN orders_details
ON orders.order_id = orders_details.order_id
GROUP BY customers.first_name
HAVING SUM(orders_details.quantity)>2;
--6.Show the total quantity sold for each product, ordered by product ID.
SELECT orders_details.product_id, products.name, 
SUM(orders_details.quantity)
FROM products 
INNER JOIN orders_details
ON products.id = orders_details.product_id
GROUP BY orders_details.product_id, products.name
ORDER BY orders_details.product_id ASC
--7.What is the most expensive product?
SELECT name, price FROM products
ORDER BY price DESC
LIMIT 1;
--8.How many orders did each customer make?
SELECT customers.first_name, SUM(orders.order_id)
FROM customers
INNER JOIN orders
ON customers.id = orders.customer_id
GROUP BY customers.first_name, orders.order_id
ORDER BY orders.order_id DESC
--9.How many units of each product (by color) were sold?
SELECT products.id,products.color, products.name, SUM(orders_details.quantity) AS total_sold
FROM products
INNER JOIN orders_details
ON products.id = orders_details.product_id
GROUP BY products.id,products.color,products.name
ORDER BY products.id ASC; 
--10.What is the total amount (cost) of each order?
SELECT orders.order_id, SUM(products.price * orders_details.quantity) 
FROM orders
INNER JOIN orders_details
ON orders.order_id = orders_details.order_id
INNER JOIN products
ON orders_details.product_id = products.id
GROUP BY orders.order_id
ORDER BY orders.order_id ASC;
