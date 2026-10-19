CREATE DATABASE BrightCart
USE BrightCart
GO

SELECT * FROM customers
SELECT 
COUNT(*) AS numberofcustomers
FROM customers

SELECT 
city,COUNT(*) AS numberofcustomers
FROM customers
GROUP BY city

SELECT 
COUNT(email) AS numberofemails
FROM customers

SELECT first_name,last_name,city 
FROM customers
ORDER BY city,last_name

USE BrightCart;
GO
SELECT TOP 10 product_name,unit_price
FROM products
ORDER BY unit_price DESC;

USE BrightCart;
GO
SELECT DISTINCT payment_method
FROM orders
 
SELECT  product_name , 
		unit_price , 
		cost_price, 
		unit_price-cost_price AS profit_per_unit
FROM products;

SELECT * 
FROM products;

CREATE TABLE store_returns(
				return_id INT,
				order_id INT,
				return_date DATE,
				reason VARCHAR(100),
				refund_amount DECIMAL(10,2),
				CONSTRAINT pk_returns PRIMARY KEY (return_id)
)
ALTER TABLE store_returns
ADD processed_by VARCHAR(50); 

SELECT *
FROM store_returns;

ALTER TABLE store_returns
ALTER COLUMN refund_amount DECIMAL(12,2)



SELECT *
INTO customer_archive
FROM customers

ALTER TABLE customer_archive
ADD archived_on DATE

ALTER TABLE store_returns
DROP COLUMN processed_by

SELECT * FROM customer_archive
SELECT * FROM store_returns