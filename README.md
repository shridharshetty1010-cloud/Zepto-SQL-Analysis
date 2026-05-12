# Zepto Product Inventory & Pricing Analysis

## Project Overview
This project focuses on analyzing Zepto’s e-commerce product dataset using SQL to derive actionable business insights related to pricing strategy, discounts, inventory availability, and category-level performance.

The objective was to simulate a real-world e-commerce analytics workflow by importing raw product data into PostgreSQL, cleaning and transforming the dataset, and solving business-driven analytical problems using SQL.

## Objective
To analyze product inventory and pricing data to identify key business insights such as:
- pricing trends across product categories
- discount strategy effectiveness
- stock availability and inventory distribution
- premium product performance
- revenue estimation opportunities
- product value benchmarking

## Tools & Technologies
- PostgreSQL
- SQL
- pgAdmin
- CSV Dataset
- GitHub

## Dataset Information
**Source:** Zepto product dataset

**Dataset Size:**
- 3,700+ product records
- Multiple product categories
- Pricing, discount, inventory, and product weight attributes

## Project Workflow

### 1. Data Import
- Imported raw CSV dataset into PostgreSQL using pgAdmin.
- Structured the dataset into a queryable relational format.

### 2. Data Cleaning & Preparation
Performed preprocessing to improve data quality:
- identified invalid pricing values
- handled inconsistent records
- transformed pricing data into analysis-ready format
- verified dataset integrity

### 3. Exploratory SQL Analysis
Performed business-focused analysis including:

#### Pricing Analysis
Analyzed:
- premium product pricing
- category-level pricing patterns
- high-MRP product performance

#### Discount Analysis
Evaluated:
- highest discounted products
- average category-wise discount percentages
- discount benchmarking across product groups

#### Inventory Analysis
Tracked:
- out-of-stock premium products
- available stock quantities
- inventory distribution by category
- estimated inventory weight

#### Revenue Analysis
Estimated:
- category-wise potential revenue
- pricing opportunity insights

#### Product Value Analysis
Calculated:
- price-per-gram comparisons
- product value benchmarking
- segmentation by product size/weight

### 4. SQL Concepts Applied
Implemented practical SQL techniques including:
- SELECT
- WHERE
- ORDER BY
- GROUP BY
- HAVING
- CASE statements
- Aggregate functions
- Subqueries
- CTEs
- Filtering logic
- KPI calculations
- Data transformation

## Key Outcomes
- Identified pricing and discount trends across multiple product categories.
- Highlighted out-of-stock premium products representing potential revenue loss.
- Benchmarked product value using price-per-weight analysis.
- Generated category-level business insights from raw e-commerce inventory data.

## Business Impact
This project demonstrates how SQL can be used to transform raw e-commerce product data into actionable business intelligence for pricing optimization, inventory management, and strategic decision-making.
