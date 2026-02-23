sql

     Global Sales SQL Analysis
     Author: Dr. Oyemade
     Database: PostgreSQL

  1. Overall Revenue and Profit
SELECT 
    SUM(total_revenue) AS total_revenue,
    SUM(total_profit) AS total_profit
FROM sales_records;

  2. Profit by Product Type
SELECT 
    item_type,
    SUM(total_profit) AS total_profit
FROM sales_records
GROUP BY item_type
ORDER BY total_profit DESC;

  3. Profit by Sales Channel
SELECT 
    sales_channel,
    SUM(total_profit) AS total_profit
FROM sales_records
GROUP BY sales_channel
ORDER BY total_profit DESC;

  4. Profit by Order Priority
SELECT 
    order_priority,
    SUM(total_profit) AS total_profit
FROM sales_records
GROUP BY order_priority
ORDER BY total_profit DESC;

  5. Monthly Profit Trend
SELECT 
    TO_CHAR(order_date, 'YYYY-MM') AS month,
    SUM(total_profit) AS monthly_profit
FROM sales_records
GROUP BY month
ORDER BY month;
