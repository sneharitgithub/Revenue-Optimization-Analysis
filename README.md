# Revenue Optimization Analysis

---

## Problem Statement

An e-commerce business wants to understand its sales performance and identify opportunities to increase revenue.

Key business questions:
- Which product categories drive the most revenue?
- Are discounts actually improving sales or reducing profitability?
- How are sales trending over time?
- Which payment methods are preferred by customers?

The goal is to **optimize pricing, improve revenue, and support business decision-making**.

---

## Dataset Description

The dataset contains transaction-level data from an e-commerce platform.

**Columns include:**
- User_ID
- Product_ID
- Category
- Price (Rs.)
- Discount (%)
- Final_Price (Rs.)
- Payment_Method
- Purchase_Date

---

## Data Cleaning

The following steps were performed:

- Converted `Purchase_Date` from text to proper date format
- Handled null values
- Checked and removed duplicate records
- Standardized column names for consistency

---

## Exploratory Analysis

Initial exploration focused on understanding data patterns:

- Distribution of product categories
- Pricing and discount behavior
- Data consistency checks

---

## Key Insights
### 1. Category Contribution

- Clothing contributes **38.6% of total revenue**, making it the highest-performing category.

- This indicates that a large portion of customer demand is concentrated in Clothing and focusing on this category could significantly impact overall revenue.
 
**Insight:** A few categories dominate revenue generation.

### 2. Sales Trend Over Time

- Revenue dropped by **22% in November** compared to October.

- This drop could indicate a seasonal trend or lack of promotional activity during that period.

**Insight:** Possible seasonal effect or lack of promotions during low-performing months.

---

### 3. Discount Impact

- Even at higher discounts (40–50%), the average revenue does not increase significantly.

- This suggests that heavy discounting may reduce profitability without improving sales performance.

 **Insight:** Heavy discounting may reduce profit without strong sales benefit.

---

### 4. Payment Method Analysis

- Credit Card contributes **~20.6% of total revenue**, making it the top-performing payment method.
- Net Banking contributes **~19.4% of total revenue**.
- Cash on Delivery has the **lowest contribution (~19.3%)**.

**Insight:** This indicates that customers show a slight preference for digital payment methods over cash-based transactions.

---

## Business Recommendations

Based on the analysis:

- Focus marketing efforts on top-performing categories like Clothing.
- Avoid excessive discounts (>40%) as they do not significantly improve revenue.
- Investigate sales drop periods and introduce targeted campaigns.
- Promote digital payment methods (Net Banking, UPI) to enhance customer experience.

---

## My Approach

- I approached this project by first cleaning the dataset and ensuring data consistency.

- Then, I performed exploratory analysis to understand patterns in categories, pricing and discounts.

- Finally, I focused on business-level questions to identify revenue drivers and areas of improvement.

---

## What I Learned

- How to convert raw data into actionable insights using SQL
- Importance of analyzing discounts vs actual revenue impact
- How to think from a business perspective rather than just writing queries

## Tools & Technologies

- SQL (MySQL)
- Excel / CSV




	
