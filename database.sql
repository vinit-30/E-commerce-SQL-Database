CREATE DATABASE ecommerce_db;

USE ecommerce_db;

CREATE TABLE customers (
customer_id INT PRIMARY KEY,
name VARCHAR(100),
email VARCHAR(100),
phone VARCHAR(15),
city VARCHAR(50)
);

CREATE TABLE products (
product_id INT PRIMARY KEY,
product_name VARCHAR(100),
price DECIMAL(10,2),
stock INT
);

CREATE TABLE orders (
order_id INT PRIMARY KEY,
customer_id INT,
order_date DATE,
total_amount DECIMAL(10,2)
);

CREATE TABLE order_items (
order_item_id INT PRIMARY KEY,
order_id INT,
product_id INT,
quantity INT,
price DECIMAL(10,2)
);

CREATE TABLE payments (
payment_id INT PRIMARY KEY,
order_id INT,
payment_method VARCHAR(50),
payment_status VARCHAR(50)
);
