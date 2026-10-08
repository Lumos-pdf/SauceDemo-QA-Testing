-- SQL for QA: sample e-commerce database setup
-- Creates and seeds four tables: users, products, orders, order_items
-- Note: some data issues are seeded intentionally for validation practice.

CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    signup_date DATE
);

CREATE TABLE products (
    id INTEGER PRIMARY KEY,
    name TEXT,
    price DECIMAL(10,2),
    category TEXT
);

CREATE TABLE orders (
    id INTEGER PRIMARY KEY,
    user_id INTEGER,
    order_date DATE,
    status TEXT
);

CREATE TABLE order_items (
    id INTEGER PRIMARY KEY,
    order_id INTEGER,
    product_id INTEGER,
    quantity INTEGER
);

INSERT INTO users VALUES
(1,'Anna','Smith','anna.smith@mail.com','2024-01-10'),
(2,'John','Doe','john.doe@mail.com','2024-01-12'),
(3,'Maria','Lopez','maria.lopez@mail.com','2024-01-15'),
(4,'Peter','Kim','peter.kim@mail.com','2024-02-01'),
(5,'Anna','Smith','anna.smith@mail.com','2024-02-03'),
(6,'Nina','Volkov',NULL,'2024-02-10'),
(7,'Tom','Brown','tom.brown@mail.com','2024-02-14'),
(8,'Lisa','White','lisa.white@mail.com','2024-03-01');

INSERT INTO products VALUES
(1,'Backpack',29.99,'Bags'),
(2,'Bike Light',9.99,'Accessories'),
(3,'Bolt T-Shirt',15.99,'Apparel'),
(4,'Fleece Jacket',49.99,'Apparel'),
(5,'Onesie',7.99,'Apparel'),
(6,'Sunglasses',12.99,'Accessories');

INSERT INTO orders VALUES
(101,1,'2024-03-01','completed'),
(102,2,'2024-03-02','completed'),
(103,3,'2024-03-02','pending'),
(104,4,'2024-03-03','completed'),
(105,99,'2024-03-04','completed'),
(106,6,'2024-03-05',NULL),
(107,7,'2024-03-06','cancelled'),
(108,1,'2024-03-07','completed');

INSERT INTO order_items VALUES
(1,101,1,1),
(2,101,2,2),
(3,102,3,1),
(4,103,4,1),
(5,104,5,3),
(6,105,1,1),
(7,106,6,1),
(8,107,2,-1),
(9,108,99,2),
(10,108,3,1);
