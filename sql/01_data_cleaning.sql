
-- DATA CLEANING SCRIPT

-- 1. Check for NULL values in important columns

DESCRIBE ecommerce_dataset_updated;
SELECT *
FROM ecommerce_dataset_updated
WHERE User_ID IS NULL 
   OR Product_ID IS NULL
   OR Category IS NULL
   OR `Final_Price(Rs.)` IS NULL;
   
   
-- 2. Check for duplicate records
SELECT 
    User_ID,
    Product_ID,
    Purchase_Date,
    COUNT(*) AS duplicate_count
FROM ecommerce_dataset_updated
GROUP BY User_ID, Product_ID, Purchase_Date
HAVING COUNT(*) > 1;



-- 3. Standardize date format (if needed)
SELECT 
    STR_TO_DATE(Purchase_Date, '%Y-%m-%d') AS formatted_date
FROM ecommerce_dataset_updated;

-- 4. Check negative or invalid values
SELECT *
FROM ecommerce_dataset_updated
WHERE `Final_Price(Rs.)`  < 0 OR `Price (Rs.)` < 0;

-- 5. Verify dataset size
SELECT COUNT(*) AS total_records
FROM ecommerce_dataset_updated;

-- 6. Convert Purchase_Date from TEXT to DATE format
DESC ecommerce_dataset_updated;

UPDATE ecommerce_dataset_updated
SET Purchase_Date_Clean = STR_TO_DATE(Purchase_Date, '%d-%m-%Y');




