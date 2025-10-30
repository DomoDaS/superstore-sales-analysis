-- SUPERSTORE SALES & PROFIT ANALYSIS
-- Author: Dominique DaSilva
-- Tool: Google BigQuery
-- Description: SQL queries supporting Tableau dashboard analysis

------------------------------------------------------------
-- QUERY 1: Sales and Profit by Region and State
------------------------------------------------------------
SELECT 
  Region,
  State,
  ROUND(SUM(Sales), 2) AS total_sales,
  ROUND(SUM(Profit), 2) AS total_profit
FROM `domo-project-469513.superstore_project.orders`
GROUP BY Region, State
ORDER BY total_sales DESC;

------------------------------------------------------------
-- QUERY 2: Product Category & Sub-Category Profitability
------------------------------------------------------------
SELECT
  Category,
  `Sub-Category` AS sub_category,
  ROUND(SUM(Sales), 2) AS total_sales,
  ROUND(SUM(Profit), 2) AS total_profit,
  ROUND(SUM(Profit) / NULLIF(SUM(Sales), 0) * 100, 2) AS profit_margin_percent
FROM `domo-project-469513.superstore_project.orders`
GROUP BY Category, sub_category
ORDER BY total_profit DESC;

------------------------------------------------------------
-- QUERY 3: Top 10 Customers by Sales
------------------------------------------------------------
SELECT
  `Customer Name` AS customer_name,
  ROUND(SUM(Sales), 2) AS total_sales,
  ROUND(SUM(Profit), 2) AS total_profit,
  COUNT(DISTINCT `Order ID`) AS total_orders
FROM `domo-project-469513.superstore_project.orders`
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;

------------------------------------------------------------
-- QUERY 4: Monthly Sales and Profit Trends
------------------------------------------------------------
SELECT 
  EXTRACT(YEAR FROM `Order Date`) AS order_year,
  EXTRACT(MONTH FROM `Order Date`) AS order_month,
  FORMAT_DATE('%b %Y', `Order Date`) AS month_label,
  ROUND(SUM(Sales), 2) AS total_sales,
  ROUND(SUM(Profit), 2) AS total_profit
FROM `domo-project-469513.superstore_project.orders`
GROUP BY order_year, order_month, month_label
ORDER BY order_year, order_month;
