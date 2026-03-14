SELECT * FROM customers;  -- return all column from customers table

SELECT * FROM products;    --return all column from product table

SELECT customers.name, orders.order_id   -- joins name column from table and order_id column from order table 
FROM customers                              
JOIN orders
ON customers.customer_id = orders.customer_id;
