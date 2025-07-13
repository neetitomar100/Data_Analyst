CREATE DATABASE Sales_Data;

CREATE TABLE Sales_Data (
    ordernumber INTEGER,
    quantityordered INTEGER,
    priceeach NUMERIC(10,2),
    orderlinenumber INTEGER,
    sales NUMERIC(12,2),
    orderdate DATE,
    status TEXT,
    qtr_id INTEGER,
    month_id INTEGER,
    year_id INTEGER,
    productline TEXT,
    msrp NUMERIC(10,2),
    productcode TEXT,
    customername TEXT,
    phone TEXT,
    addressline1 TEXT,
    addressline2 TEXT,
    city TEXT,
    state TEXT,
    postalcode TEXT,
    country TEXT,
    territory TEXT,
    contactlastname TEXT,
    contactfirstname TEXT,
    dealsize TEXT
);

SELECT * FROM Sales_Data;


COPY Sales_Data
FROM 'C:\Program Files\PostgreSQL\17\E Commerce sales data.csv'
DELIMITER ','
CSV HEADER
ENCODING 'WIN1252';

SELECT * FROM Sales_Data;

1. Top 5 Customers by Sales
SELECT customername, ROUND(SUM(sales),2) AS Total_customer_Sales
FROM Sales_Data
GROUP BY customername
ORDER BY Total_customer_sales DESC LIMIT 5;

2. Sales by Year
SELECT year_id, SUM(Sales) AS Total_Sales_Year
FROM Sales_Data
GROUP BY year_id
ORDER BY year_id;

3. Most sold Products
SELECT productcode, SUM(quantityordered) AS TotalQuantity
FROM Sales_Data
GROUP BY productcode
ORDER BY TotalQuantity DESC LIMIT 5;

4. Montly Sales Trend
SELECT year_id,month_id, SUM(sales) AS Monthly_Sales
FROM Sales_Data
GROUP BY year_id, month_id
ORDER BY year_id, month_id;

5. Sales by Product line
SELECT productline, SUM(sales) AS Productline_Sales
FROM Sales_Data
GROUP BY productline
ORDER BY Productline_Sales DESC;

SELECT * FROM Sales_Data

6. Top 5 Countries by Sales
SELECT country, SUM(Sales) AS Country_wise_sales
FROM Sales_Data
GROUP BY country
ORDER BY Country_wise_sales DESC LIMIT 5;

7. Sales by Deal Size
SELECT dealsize, ROUND(SUM(Sales),2) AS Dealsize_wise_sales
FROM Sales_Data
GROUP BY dealsize;

8. Order status summary
SELECT status, COUNT(*) AS Total_Orders
FROM Sales_Data
GROUP BY status;


SELECT * FROM Sales_Data;






SELECT * FROM Sales_Data;













SELECT * FROM Sales_Data;

2. 

