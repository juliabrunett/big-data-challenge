-- Reviews Table
CREATE TABLE review_id_table (
  review_id TEXT PRIMARY KEY NOT NULL,
  customer_id INTEGER,
  product_id TEXT,
  product_parent INTEGER,
  review_date DATE
);

-- Products Table
CREATE TABLE products (
  product_id TEXT PRIMARY KEY NOT NULL UNIQUE,
  product_title TEXT
);

-- Customer Table
CREATE TABLE customers (
  customer_id INT PRIMARY KEY NOT NULL UNIQUE,
  customer_count INT
);

-- Queries to see each table
SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM review_id_table;

-- Queries to reduce time
SELECT * FROM review_id_table 
LIMIT 100;
SELECT * FROM customers
LIMIT 100;
SELECT * FROM products
LIMIT 100;

-- Drop tables to re-run
DROP TABLE customers;
DROP TABLE products;
DROP TABLE review_id_table;
