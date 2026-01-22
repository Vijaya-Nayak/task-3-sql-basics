
-- Task 3: SQL Basics – Filtering, Sorting, Aggregations
-- Database: Global Superstore / Superstore

-- 1. Basic exploration
SELECT COUNT(*) AS total_rows FROM sales;
SELECT * FROM sales LIMIT 10;
SELECT DISTINCT category FROM sales;
SELECT DISTINCT region FROM sales;

-- 2. Filtering & Sorting
-- Top selling products in Technology category
SELECT product_name, sales
FROM sales
WHERE category = 'Technology'
ORDER BY sales DESC
LIMIT 10;

-- 3. Aggregations
-- Total sales by category
SELECT category, SUM(sales) AS total_sales
FROM sales
GROUP BY category;

-- Average profit by region
SELECT region, AVG(profit) AS avg_profit
FROM sales
GROUP BY region;

-- 4. HAVING clause
-- Categories with total sales > 100000
SELECT category, SUM(sales) AS total_sales
FROM sales
GROUP BY category
HAVING SUM(sales) > 100000;

-- 5. Date range & pattern matching
-- Monthly sales report
SELECT SUM(sales) AS monthly_sales
FROM sales
WHERE order_date BETWEEN '2017-01-01' AND '2017-01-31';

-- Customer name search
SELECT *
FROM sales
WHERE customer_name LIKE '%Smith%';

-- 6. Top customers by total spend
SELECT customer_name, SUM(sales) AS total_spend
FROM sales
GROUP BY customer_name
ORDER BY total_spend DESC
LIMIT 5;
