CREATE DATABASE sales_db;
--CUSTOMERS
CREATE TABLE customers(
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(50),
  phone VARCHAR(50),
  city VARCHAR(50),
  registration_date DATE
  )
  
--ORDERS
CREATE TABLE orders(
    order_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(id),
    order_date DATE
);

--ORDERS_DETAILS
CREATE TABLE orders_details(
    id SERIAL PRIMARY KEY,
    order_id INT REFERENCES orders(order_id),
    product_id INT REFERENCES products(id),
    quantity INT
);
--PRODUCTS
CREATE TABLE products(
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    weight DOUBLE,
    color VARCHAR(30),
    price NUMERIC(10,2),
    stock INT,
    gb INT
);
