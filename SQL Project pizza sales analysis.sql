CREATE TABLE pizza_sales(
pizza_id SERIAL,
order_id INT,
pizza_name_id VARCHAR(100),
quantity INT,
order_date DATE,
order_time TIME,
unit_price FLOAT,
total_price FLOAT,
pizza_size VARCHAR(10),
pizza_category VARCHAR(100),
pizza_ingredients VARCHAR(100),
pizza_name VARCHAR(100)
);

DROP TABLE pizza_sales;

ALTER TABLE pizza_sales
ALTER COLUMN pizza_size TYPE VARCHAR(10);


SELECT * FROM pizza_sales;

COPY pizza_sales FROM 'C:\Program Files\PostgreSQL\17\PizzaSales1.csv'
DELIMITER ','
CSV HEADER;

1. Total Sales (Revenue):

SELECT SUM(total_price) AS total_revenue
FROM pizza_sales;

SELECT ROUND(SUM(total_price)::numeric,0) AS total_revenue
FROM pizza_sales;


2.  Total Pizzas Sold:

SELECT SUM(quantity) AS total_pizza_sold
FROM pizza_sales;


3. Average Order Value (AOV):

SELECT SUM(total_price) / COUNT(DISTINCT order_id) AS average_order_value
FROM pizza_sales;

SELECT ROUND(SUM(total_price)::numeric / COUNT(DISTINCT order_id), 0) AS average_order_value
FROM pizza_sales;

4. Total Orders:

SELECT COUNT(DISTINCT order_id) AS Total_Order
FROM pizza_sales;

5. Sales by Pizza Category

SELECT pizza_name_id, 
SUM(quantity) AS total_quantity_sold
FROM pizza_sales
GROUP BY pizza_name_id
ORDER BY total_quantity_sold DESC
LIMIT 5;

7. Sales by Pizza Size

SELECT pizza_size, 
SUM(quantity) AS total_sold
FROM pizza_sales
GROUP BY pizza_size
ORDER BY total_sold DESC;

8. Hourly sales trend:

SELECT EXTRACT(HOUR FROM order_time) AS order_hour,
SUM(total_price) AS hourly_sales
FROM pizza_sales
GROUP BY order_time
ORDER BY order_hour;

9. Daily Sales Trend:

SELECT Order_date,
SUM(total_price) AS daily_sales
FROM pizza_sales
GROUP BY order_date
ORDER BY order_date;

10. Top 5 Best-Selling Pizzas (by Revenue)

SELECT pizza_name_id,
SUM(total_price) AS total_revenue
FROM pizza_sales
GROUP BY pizza_name_id
ORDER BY total_revenue DESC
LIMIT 5;

SELECT 
pizza_name_id,
ROUND(SUM(total_price)::numeric, 2) AS total_revenue
FROM pizza_sales
GROUP BY pizza_name_id
ORDER BY total_revenue DESC
LIMIT 5;






































