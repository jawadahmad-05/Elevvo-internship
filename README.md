# Elevvo-internship
Data analysis with Excel, Python, SQL, and Power BI on Kaggle datasets

# Elevvo Data Analytics Internship Projects

## Overview
This repository contains my completed projects for the Elevvo Internship in Data Analytics. I enrolled in the 2-week format and completed 7 tasks (exceeding the minimum of 3) to meet and surpass the requirements. The tasks focus on real-world data analysis skills using tools like Excel, Python (Pandas, Seaborn, Matplotlib), SQL, Power BI, and more.

These projects demonstrate skills in data cleaning, exploratory data analysis (EDA), visualization, customer segmentation, SQL database querying, time series analysis, and business intelligence dashboards. All datasets are from public sources like Kaggle, as recommended.

Completing these tasks helped me build a strong portfolio piece, and I'm sharing it on LinkedIn as per the internship guidelines to boost visibility and professional growth.

## Completed Tasks
Here’s a summary of the tasks I tackled. Each includes a brief description, tools used, key learnings, and links to the relevant files in this repo.

### Task 1: Sales Performance Dashboard Using Excel
- **Description**: Imported the Superstore Sales Dataset into Excel, cleaned and organized the data using formatting and formulas, used pivot tables to summarize key metrics like total revenue, units sold, and monthly trends. Created clean, readable charts to visualize overall performance.
- **Bonus**: Calculated MoM changes; added slicers for filtering by region or product category (implied in dashboard setup).
- **Tools**: Excel (Pivot Tables, Charts).
- **Covered Topics**: Excel basics, Pivot tables & charts, Business metrics.
- **Key Insights**: 
  - Total Revenue: $1,924,337.88 across Jan-Jun 2015.
  - Total Profit: $224,077.61.
  - Total Units Sold: 25,268.
  - Return Rate: 0.77%.
  - Highest sales in California ($288,310.61), followed by New York ($223,930.48).
  - MoM Sales Growth: Peaked at +43.5% in April; overall varied with +15.9% in June.
  - Repeat Customers: 67.4% of orders.

### Task 2: Exploratory Data Analysis on Titanic Dataset
- **Description**: Explored the Titanic dataset using Python, performed data cleaning (handled missing values in Age and Embarked, dropped Cabin, converted types), generated summary statistics and group-based insights (e.g., survival by gender/class), and visualized key patterns and correlations.
- **Bonus**: Visualized survival rates using bar plots and heatmaps.
- **Tools**: Python, Pandas, Seaborn/Matplotlib.
- **Covered Topics**: EDA, Data types & missing data, Data visualization.
- **Key Insights**: 
  - Overall Survival Rate: 38%.
  - Survival by Gender: 74% for females vs. 19% for males.
  - Survival by Class: 63% for 1st class, 47% for 2nd, 24% for 3rd.
  - Age Distribution: Most passengers aged 20-40; children under 10 had higher survival (59%).
  - Embarkation Patterns: Higher survival from Cherbourg (55%) vs. Southampton (34%) or Queenstown (39%).
  - Correlations: Strong positive correlation between fare and survival; negative with class.

### Task 3: Customer Segmentation Using RFM Analysis
- **Description**: Used the Online Retail Dataset to analyze customer behavior based on Recency (days since last purchase), Frequency (purchase count), and Monetary (total spend). Assigned scores, grouped customers into segments, and suggested simple marketing ideas for each group.
- **Bonus**: Visualized RFM segments with heatmaps or bar charts.
- **Tools**: Python, Pandas, Seaborn (or Excel).
- **Covered Topics**: Feature engineering, Segmentation logic, Customer analytics.
- **Key Insights**: 
  - Customer Segments: Champions (1,256), Potential Loyalists (1,178), Loyal Customers (1,022), At Risk (883).
  - Champions: High RFM scores – recent, frequent, high-spending customers.
  - At Risk: Low recency but potentially high frequency/monetary – need re-engagement.
  - Heatmap shows concentration of customers with high frequency and low recency in top segments.
  - Marketing Ideas: Loyalty programs for Champions, discounts for Potential Loyalists, win-back campaigns for At Risk.

### Task 4: Data Cleaning and Insight Generation from Survey Data
- **Description**: Worked with the Kaggle Data Science Survey 2017-2021 dataset containing missing values, duplicates, and inconsistent formatting. Cleaned the dataset (dropped high-null rows, filled others, removed duplicates), applied label encoding or mapping for categorical variables. Extracted meaningful insights about respondent behavior or preferences.
- **Bonus**: Created a summary dashboard or chart showing top 5 insights.
- **Tools**: Python or Excel.
- **Covered Topics**: Data cleaning, Categorical handling, Reporting.
- **Key Insights**: 
  - Top 5 Countries: India (22,952), United States (7,970), Other (4,513), Brazil (2,474), Nigeria (2,337).
  - Top 5 Roles: Student (21,936), Data Scientist (7,005), Software Engineer (6,781), Data Analyst (6,077), Research Scientist (3,468).
  - Top 5 Programming Languages: Python (41,463), R (9,928), SQL (8,944), C++ (5,859), Java (5,415).
  - Top 5 ML Frameworks: Scikit-learn (23,692), TensorFlow (15,318), Keras (12,875), PyTorch (10,735), Xgboost (8,358).
  - Top 5 BI Tools: Tableau (7,957), Microsoft Power BI (7,369), Google Data Studio (2,785), Amazon QuickSight (471), Salesforce (447).

### Task 5: SQL Database Analysis on Chinook Music Store Dataset
- **Description**: Analyzed the Chinook database simulating a digital music store using SQL. Created tables to combine product and sales data, identify top-selling products, calculate revenue per region (country), track monthly performance, and rank products by revenue globally and per country.
- **Bonus**: Used window functions (RANK) for global and per-country rankings.
- **Tools**: SQL (MySQL).
- **Covered Topics**: SQL joins, aggregation, grouping, window functions, database querying.
- **Key Insights**: 
  - Top-selling products identified by total quantity sold and revenue, grouped by track, album, and artist.
  - Revenue distribution across countries, ordered by total revenue.
  - Monthly revenue trends using date formatting and aggregation.
  - Product rankings by revenue, both globally and partitioned by country, to highlight regional preferences.

### Task 7: Time Series Breakdown of Retail Sales
- **Description**: Used the Walmart Retail Sales Dataset to break down sales trends over time (weekly/monthly). Merged sales, features, and stores data; handled missing values; visualized sales by date, store type, holidays; decomposed time series into trend, seasonal, and residual components; forecasted future sales using moving averages and exponential smoothing.
- **Bonus**: Performed time series decomposition using STL and visualized forecasts.
- **Tools**: Python, Pandas, Seaborn/Matplotlib, Statsmodels.
- **Covered Topics**: Time series decomposition, Forecasting basics.
- **Key Insights**: 
  - Sales show strong weekly and seasonal patterns, with peaks during holidays (e.g., ~20% increase on holidays).
  - Type A stores have the highest average sales (~$20M weekly), followed by B and C.
  - Decomposition reveals upward trend in sales over 2010-2012, with clear seasonality (e.g., year-end spikes).
  - Correlations: Negative with unemployment (-0.11), positive with temperature (0.06); no strong fuel price impact.
  - Forecasts: Next month ~$1.48M (MA-3), ~$1.47M (EWMA α=0.3).

### Task 8: Superstore Sales Dashboard Using Power BI
- **Description**: Created an interactive Superstore Sales Dashboard in Power BI, integrating sales data to visualize monthly sales vs. target, sales by category, top 10 products, sales by segment, seasonal trends (2015-2018), and sales by region/state. Used slicers for state-level filtering and calculated key metrics.
- **Bonus**: Added detailed state-level breakdowns and seasonal trend analysis.
- **Tools**: Power BI.
- **Covered Topics**: Data visualization, Dashboard design, Interactive reporting.
- **Key Insights**: 
  - Monthly Sales: $83,030 (66.06% above target of $50,000).
  - Sales by Category: Technology ($1M), Furniture ($0.5M), Office Supplies ($0.5M).
  - Top Products: Canon imageCLASS led, Fellowes PB500 Electric Punch ($0.1M+ each).
  - Sales by Segment: Consumer (50.76%), Corporate (18.79%), Home Office (30.44%).
  - Seasonal Trends: Peaks in Dec 2015/2016, dips in Feb; steady 2017-2018 growth.
  - Sales by Region: West ($710K, 31.4%), East ($670K, 29.6%), Central ($493K, 21%), South ($389K, 17.21%).
  - Avg Sales per Order: $459.48; First Region (Central) sales: $4922; Total Orders: 4922.

## Bonus Tasks and Extra Efforts
- Completed bonuses across all tasks: MoM calculations and slicers in Task 1; heatmaps in Tasks 2 and 3; summary dashboard in Task 4; window functions in Task 5; decomposition and forecasts in Task 7; state-level breakdowns and seasonal trends in Task 8.
- Exceeded the minimum by completing four extra tasks, increasing eligibility for the "Outstanding Contributor" badge.
