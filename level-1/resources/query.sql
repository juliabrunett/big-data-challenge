-- Queries to reduce time
SELECT * FROM review_id_table 
LIMIT 100;
SELECT * FROM customers
LIMIT 100;
SELECT * FROM products
LIMIT 100;

-- Query to find number of customer reviews for each product
SELECT r.product_id, p.product_title, c.customer_count
FROM review_id_table as r
INNER JOIN products as p
ON r.product_id = p.product_id
INNER JOIN customers as c 
ON r.customer_id = c.customer_id
LIMIT 1000;