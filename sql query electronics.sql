SELECT * FROM electronics_sales

SELECT EXTRACT(MONTH FROM DATE) AS month
FROM electronics_sales

SELECT EXTRACT(YEAR FROM DATE) AS YEAR,
		EXTRACT(MONTH FROM DATE) AS MONTH,
SUM(amount) AS TOTAL_Revenue
FROM electronics_sales
GROUP BY year,month

SELECT COUNT(DISTINCT product_id) AS total_orders
FROM electronics_sales

SELECT COUNT(DISTINCT category) AS total_category
FROM electronics_sales

SELECT EXTRACT(YEAR FROM DATE) AS YEAR,
		EXTRACT(MONTH FROM DATE) AS MONTH,
SUM(amount) AS Revenue
FROM electronics_sales
GROUP BY year,month
ORDER BY REVENUE  DESC


SELECT * FROM electronics_sales
WHERE date BETWEEN '2024-01-01' AND '2024-12-31'
ORDER BY DATE ASC


SELECT 
    EXTRACT(YEAR FROM DATE) AS year,
    EXTRACT(MONTH FROM DATE) AS month,
    product_id,
    SUM(amount) AS total_revenue
FROM electronics_sales
GROUP BY year, month, product_id
ORDER BY year, month, product_id;


SELECT 
    EXTRACT(YEAR FROM DATE) AS year,
    EXTRACT(MONTH FROM DATE) AS month,
    COUNT(DISTINCT product_id) AS distinct_products,
    SUM(amount) AS total_revenue
FROM electronics_sales
WHERE date BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY year, month
ORDER BY year, month;



SELECT 
    EXTRACT(YEAR FROM DATE) AS year,
    EXTRACT(MONTH FROM DATE) AS month,
    COUNT(DISTINCT product_id) AS distinct_products,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT category) AS DISTINCT_CATEGORY
FROM electronics_sales
WHERE date BETWEEN '2025-01-01' AND '2025-12-31'
GROUP BY year, month
ORDER BY year, month;

SELECT 
    EXTRACT(YEAR FROM date) AS year,
    EXTRACT(MONTH FROM date) AS month,
    COUNT(DISTINCT product_id) AS distinct_products,
    COUNT(DISTINCT category) AS distinct_category,
    SUM(amount) AS total_revenue
FROM electronics_sales
GROUP BY year, month
ORDER BY year, month;

SELECT 
    EXTRACT(YEAR FROM date) AS year,
    EXTRACT(MONTH FROM date) AS month,
    product, category, state,
    COUNT(DISTINCT product_id) AS distinct_products,
    COUNT(DISTINCT category) AS distinct_category,
    SUM(amount) AS total_revenue
FROM electronics_sales
WHERE date BETWEEN '2024-01-01' AND '2025-12-31'
GROUP BY year, month, product, category, state
ORDER BY year, month, product, category, state;

SELECT 
    EXTRACT(YEAR FROM date) AS year,
    EXTRACT(MONTH FROM date) AS month,
    product, category, state,
    COUNT(DISTINCT product_id) AS distinct_products,
    COUNT(DISTINCT category) AS distinct_category,
    SUM(amount) AS total_revenue
FROM electronics_sales
WHERE date BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY year, month, product, category, state
ORDER BY year, month, product, category, state;


SELECT 
    EXTRACT(YEAR FROM date) AS year,
    EXTRACT(MONTH FROM date) AS month,
    product, category, state,
    COUNT(DISTINCT product_id) AS distinct_products,
    COUNT(DISTINCT category) AS distinct_category,
    SUM(amount) AS total_revenue
FROM electronics_sales
WHERE date BETWEEN '2025-01-01' AND '2025-12-31'
GROUP BY year, month, product, category, state
ORDER BY year, month, product, category, state;


SELECT 
    TO_CHAR(date, 'YYYY-MM') AS month_year,
    SUM(amount) AS monthly_revenue
FROM electronics_sales
WHERE date BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY month_year
ORDER BY month_year;

SELECT 
    TO_CHAR(date, 'YYYY-MM') AS month_year,
    SUM(amount) AS monthly_revenue
FROM electronics_sales
WHERE date BETWEEN '2025-01-01' AND '2025-12-31'
GROUP BY month_year
ORDER BY month_year;







