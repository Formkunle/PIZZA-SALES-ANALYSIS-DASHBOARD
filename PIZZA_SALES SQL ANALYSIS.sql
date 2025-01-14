SELECT *
FROM pizza_sales
LIMIT 5;

ALTER TABLE pizza_sales
RENAME COLUMN total_price TO total_sale;

-- 1.	Total Sales: Sum of total_sale.
SELECT ROUND(SUM(total_sale)::numeric, 4) AS "Total Sales"
FROM pizza_sales;

--2.	Total Orders: Count of unique order_id.
SELECT COUNT(DISTINCT order_id) AS "Total Order"
FROM pizza_sales;

--3.	Average Order Value (AOV): Total Sales ÷ Total Orders.
SELECT SUM(total_sale) / COUNT(DISTINCT order_id) AS "Average Order Value"
FROM pizza_sales;

--4.	Total Quantity Sold: Sum of quantity.
SELECT SUM(quantity) AS "Total Quantity Sold"
FROM pizza_sales;

--5.	Total Qunatity Sold by Pizza Size.
SELECT pizza_size, SUM(total_sale) AS "Total Sales"
FROM pizza_sales
GROUP BY pizza_size
ORDER BY "Total Sales" DESC;

--6. Total Qunatity Sold by Pizza Category
SELECT pizza_category, SUM(total_sale) AS "Total Sales"
FROM pizza_sales
GROUP BY pizza_category
ORDER BY "Total Sales" DESC;

--7. 

--
