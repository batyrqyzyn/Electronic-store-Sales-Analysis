-- Таблица: customers 
INSERT INTO customers (id, first_name, last_name, email, phone, city, registration_date) VALUES
(2, 'Nazerke', 'Akhmetova', 'n.akhmetova@gmail.com', '+7 701 111 1111', 'Astana', '2025-01-12'),
(3, 'Anuzhan', 'Saparova', 'anuzhan@gmail.com', '+7 702 222 2222', 'Almaty', '2025-02-10'),
(4, 'Dias', 'Nurgaliyev', 'dias@gmail.com', '+7 705 333 3333', 'Shymkent', '2025-02-05'),
(5, 'Aibek', 'Kenzhebek', 'aibek@gmail.com', '+7 707 444 4444', 'Karaganda', '2025-02-28'),
(6, 'Madina', 'Kozhabek', 'madina@gmail.com', '+7 747 555 5555', 'Aktobe', '2025-04-10'),
(7, 'Alikhan', 'Serikov', 'alikhan@gmail.com', '+7 747 566 6666', 'Taraz', '2025-05-16'),
(1, 'Aigerim', 'Muratova', 'aigerim@gmail.com', '+7 707 111 11 11', 'LA', '2025-01-12');

-- Таблица: products 
INSERT INTO products (id, name, weight, color, price, gb) VALUES
(2, 'iPhone 16', 170, 'black', 450637.00, 128),
(3, 'iPhone 16 pro', 199, 'white', 669990.00, 128),
(4, 'iPhone 16 pro', 199, 'black', 729420.00, 256),
(6, 'iPhone 16 pro max', 277, 'skyblue', 877695.00, 256),
(7, 'iPhone 16 pro max', 277, 'black', 1050000.00, 1024),
(1, 'iPhone 16', 170, 'blue', 521455.00, 256),
(5, 'iPhone 16 pro max', 277, 'golden', 848000.00, 256);

-- Таблица: orders 
INSERT INTO orders (order_id, customer_id, order_date) VALUES
(1, 2, '2025-01-16'),
(2, 1, '2025-01-17'),
(3, 5, '2025-03-19'),
(4, 7, '2025-05-29'),
(5, 6, '2025-04-14');

-- Таблица: orders_details
INSERT INTO orders_details (id, order_id, product_id, quantity) VALUES
(1, 1, 6, 1),
(2, 2, 3, 1),
(3, 3, 1, 1),
(4, 3, 5, 1),
(5, 4, 1, 1),
(6, 5, 5, 2),
(7, 5, 7, 1);
