
-- EXPLORATORY DATA ANALYSIS (EDA)

-- 1. View sample data
SELECT *
FROM ecommerce_dataset_updated
LIMIT 10;

-- 2. Unique categories
SELECT DISTINCT Category
FROM ecommerce_dataset_updated;

-- 3. Total number of orders
SELECT COUNT(*) AS total_orders
FROM ecommerce_dataset_updated;

-- 4. Total revenue
SELECT SUM(`Final_Price(Rs.)`)AS total_revenue
FROM ecommerce_dataset_updated;

-- 5. Average order value
SELECT AVG(`Final_Price(Rs.)`) AS avg_order_value
FROM ecommerce_dataset_updated;

-- 6. Payment method distribution
SELECT 
    Payment_Method,
    COUNT(*) AS usage_count
FROM ecommerce_dataset_updated
GROUP BY Payment_Method
ORDER BY usage_count DESC;