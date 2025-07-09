CREATE DATABASE Supply_chain;

CREATE TABLE Supply_Chain(
Product_type VARCHAR(100),
SKU VARCHAR(100),
Price FLOAT,
Availability INT,
Number_of_products_sold INT,
Revenue_generated FLOAT,
Customer_demographics VARCHAR(100),
Stock_levels INT,
Lead_times INT,
Order_quantities INT,
Shipping_times INT,
Shipping_carriers VARCHAR(100),
Shipping_costs FLOAT,
Supplier_name VARCHAR(100),
Location VARCHAR(100),
Lead_time INT,
Production_volumes INT,
Manufacturing_lead_time INT,
Manufacturing_costs FLOAT,
Inspection_results VARCHAR(100),
Defect_rates FLOAT,
Transportation_modes VARCHAR(100),
Routes VARCHAR(100),
Costs FLOAT
);


SELECT * FROM supply_chain;

1. Total Orders
SELECT COUNT(*) AS Total_order
FROM supply_chain;

2. Total Products Shipped
SELECT COUNT(product_type)AS Total_products_Shipped
FROM supply_chain;

3. Total Shipping Cost
SELECT ROUND(SUM(shipping_costs)::numeric,2) AS Total_Shipping_cost
FROM supply_chain;

4. Average Delivery Time

5. Top 5 Most Shipped Products
SELECT product_type,
SUM(number_of_products_sold) AS Total_Quantity
FROM supply_chain
GROUP BY product_type
ORDER BY Total_Quantity;

6. Orders by Carrier
SELECT shipping_carriers,
COUNT(*) AS total_orders
FROM supply_chain
GROUP BY shipping_carriers
ORDER BY total_orders DESC;

7. Count of Delayed Deliveries
SELECT 
shipping_times, 
COUNT(*) 
FROM supply_chain
GROUP BY Shipping_times;

SELECT * FROM supply_chain;

8. Order by location
SELECT location,
COUNT(*) AS total_orders
FROM supply_chain
GROUP BY location
ORDER BY total_orders DESC;












