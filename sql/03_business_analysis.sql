
-- BUSINESS ANALYSIS

-- 1. Sales trend over time (Monthly)
SELECT 
    DATE_FORMAT(Purchase_Date_Clean, '%Y-%m') AS month,
    SUM(`Final_Price(Rs.)`) AS revenue
FROM ecommerce_dataset_updated
GROUP BY month
ORDER BY month;
-- 2. Revenue by category
SELECT 
    Category,
    SUM(`Final_Price(Rs.)`)  AS total_revenue
FROM ecommerce_dataset_updated
GROUP BY Category
ORDER BY total_revenue DESC;

-- 3. Top 5 customers by spending
SELECT 
    User_ID,
    SUM(`Final_Price(Rs.)`)  AS total_spent
FROM ecommerce_dataset_updated
GROUP BY User_ID
ORDER BY total_spent DESC
LIMIT 5;

-- 4. Most popular products
SELECT 
    Product_ID,
    COUNT(*) AS purchase_count
FROM ecommerce_dataset_updated
GROUP BY Product_ID
ORDER BY purchase_count DESC
LIMIT 5;

-- 5. Discount impact on revenue
SELECT 
    `Discount (%)`,
    AVG(`Final_Price(Rs.)`)  AS avg_revenue
FROM ecommerce_dataset_updated
GROUP BY `Discount (%)`
ORDER BY `Discount (%)` DESC;

-- 6. Identify low-performing months (anomaly detection)
SELECT 
    DATE_FORMAT(Purchase_Date_Clean, '%Y-%m') AS month,
    SUM(`Final_Price(Rs.)`) AS revenue
FROM ecommerce_dataset_updated
GROUP BY month
ORDER BY revenue ASC;

-- 7. Repeat customers
SELECT 
    User_ID,
    COUNT(*) AS order_count
FROM ecommerce_dataset_updated
GROUP BY User_ID
HAVING COUNT(*) > 1
ORDER BY order_count DESC;

-- 8. % contribution by category
SELECT 
    Category,
    SUM(`Final_Price(Rs.)`) AS revenue,
    ROUND(
        (SUM(`Final_Price(Rs.)`) / 
        (SELECT SUM(`Final_Price(Rs.)`) FROM ecommerce_dataset_updated)) * 100, 2
    ) AS contribution_percent
FROM ecommerce_dataset_updated
GROUP BY Category
ORDER BY revenue DESC;

-- 9. Payment Method Analysis
SELECT 
    Payment_Method,
    COUNT(*) AS orders,
    SUM(`Final_Price(Rs.)`) AS revenue
FROM ecommerce_dataset_updated
GROUP BY Payment_Method
ORDER BY revenue DESC;






