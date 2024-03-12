-- Example 1: Basic Retrieval
SELECT * FROM customers;

-- Example 2: Specific Column Selection
SELECT customer_id, first_name, last_name FROM customers;

-- Example 3: Filtering with WHERE
SELECT * FROM orders WHERE order_date > '2024-03-01';

-- Example 4: Sorting with ORDER BY
SELECT product_name, price FROM products ORDER BY price DESC;

-- Example 5: Calculations with Functions
SELECT order_id, SUM(quantity * price) AS order_total FROM order_details GROUP BY order_id; 

-- Example 6: String Manipulation
SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM customers;

-- Example 7: Limiting Results with TOP (or LIMIT)
SELECT TOP 10 * FROM sales ORDER BY sales_amount DESC; 
-- Or, depending on your database system:
SELECT * FROM sales ORDER BY sales_amount DESC LIMIT 10;

-- Example 8: Using DISTINCT
SELECT DISTINCT country FROM customers;

-- Example 9: Combining Tables with JOIN
SELECT orders.order_id, customers.first_name, products.product_name
FROM orders
INNER JOIN customers ON orders.customer_id = customers.customer_id
INNER JOIN order_details ON orders.order_id = order_details.order_id
INNER JOIN products ON order_details.product_id = products.product_id;

-- Example 10: Subqueries
SELECT * FROM customers 
WHERE country = (SELECT country FROM customers WHERE customer_id = 123);
