Zepto Product Inventory & Pricing Analysis using SQL
Project Overview

This project analyzes Zepto’s product inventory dataset using SQL to extract business insights related to pricing, discounts, stock availability, product value, and category-level performance.

The goal was to simulate real-world e-commerce analytics by cleaning raw product data and answering practical business questions using SQL queries.

Dataset Information

Source: Zepto product dataset (CSV)

Dataset Size:

3,732 product records
9 attributes
Features
Column Name	Description
category	Product category
name	Product name
mrp	Maximum Retail Price
discountPercent	Discount offered
availableQuantity	Available stock quantity
discountedSellingPrice	Final selling price
weightInGms	Product weight
outOfStock	Stock availability
quantity	Product quantity
Problem Statement

E-commerce businesses need actionable insights from inventory and pricing data to optimize:

pricing strategy
inventory management
promotional campaigns
stock planning
product assortment decisions

This project uses SQL to solve these business problems.

Data Cleaning Performed

Before analysis, the dataset was cleaned to improve accuracy.

Cleaning Steps :

 Checked total row count

 Inspected sample records

 Identified null values

 Detected duplicate product names

 Removed invalid records where price = 0

 Converted monetary values from paise to rupees

SQL Analysis Questions Solved
1. Top 10 Best Value Products

Identified products offering the highest discount percentages.

Business Value: Helps highlight attractive promotional products.

2. High MRP Products Currently Out of Stock

Found expensive products that are unavailable.

Business Value: Helps identify missed revenue opportunities.

3. Estimated Revenue by Category

Calculated:

discountedSellingPrice × quantity

for each category.

Business Value: Reveals top-performing categories.

4. Premium Products with Low Discounts

Identified products where:

MRP > ₹500
Discount < 10%

Business Value: Useful for premium pricing strategy analysis.

5. Categories with Highest Average Discounts

Calculated average discount percentage by category.

Business Value: Shows aggressive promotional categories.

6. Best Price per Gram Products

Computed:

discountedSellingPrice / weightInGms

for products above 100g.

Business Value: Helps compare product value efficiently.

7. Product Segmentation by Weight

Grouped products into:

Low
Medium
Bulk

using CASE statements.

Business Value: Useful for inventory classification.

8. Total Inventory Weight by Category

Calculated:

weightInGms × availableQuantity

for each category.

Business Value: Supports warehouse planning.

Key Insights

Based on the analysis:

Significant pricing variation exists across categories.
Some premium products are unavailable despite high selling potential.
Discount strategies differ considerably between categories.
Price-per-weight analysis helps identify genuine value products.
Inventory distribution varies heavily by category.
SQL Concepts Used

This project demonstrates practical SQL skills including:

SELECT
WHERE
ORDER BY
GROUP BY
HAVING
DISTINCT
CASE WHEN
Aggregate Functions
COUNT()
SUM()
AVG()
Data Cleaning Queries
DELETE
UPDATE
Filtering Logic
Business KPI Calculations
SQL (PostgreSQL / pgAdmin)

This project strengthened my understanding of:

SQL-based data cleaning
exploratory data analysis
business-focused query writing
converting raw data into actionable insights
solving real-world e-commerce analytics problems
Future Improvements

Potential extensions:

Build interactive Power BI dashboard
Add category profitability analysis
Perform demand forecasting
Create SQL views for reusable reporting
Add advanced window function analysis
Author

Shridhar Shetty

SQL Data Analytics Project
