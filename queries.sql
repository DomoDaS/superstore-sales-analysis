# Superstore Sales & Profit Dashboard

**Author:** Dominique DaSilva  
**Tools:** SQL (Google BigQuery), Tableau  
**Data Source:** Tableau Superstore Dataset  

---

## Project Overview
This project explores sales and profit performance for a retail business using the Superstore dataset.  
The goal was to uncover insights into **regional profitability, product performance, customer behavior, and time-based sales trends.**

---

##  Business Questions
1. Which regions and states generate the most sales and profit?  
2. Which product categories and sub-categories are most profitable?  
3. Who are the top 10 customers by total sales?  
4. How do sales and profit change month over month?  

---

##  Data & Methodology
- **Data Preparation:** SQL queries written in **Google BigQuery**
- **Visualization:** Tableau Desktop  
- **Dataset Size:** ~9,900 records from the Superstore retail dataset  
- **Fields Used:** Order Date, Category, Region, State, Customer Name, Sales, Profit  

---

## SQL Highlights
Key operations include:
- Aggregations using `SUM()` and `ROUND()`  
- Ranking and filtering with `ORDER BY` and `LIMIT`  
- Grouping by multiple fields (`GROUP BY Category, sub_category`)  
- Time-series analysis with `EXTRACT()` and `FORMAT_DATE()`  

You can view the full SQL file here → [queries.sql](./queries.sql)

---

##  Key Insights
✅ **West Region** leads both in sales and profit performance.  
✅ **Technology products** generate the highest margins.  
✅ **Top 10 customers** contribute significantly to total revenue.  
✅ **Sales and profit trends** show consistent growth with seasonal peaks.  

---

##  Visualization
Interactive Tableau dashboard:  
https://public.tableau.com/app/profile/dominique.dasilva/viz/SuperstoreSalesProfitDashboard_17618317261400/SuperstoreSalesDashboard

---

## Tools & Technologies
- SQL (Google BigQuery)
- Tableau
- Excel/CSV (data preparation)
- GitHub (project documentation)

---

##  Contact
📧 Email: domodasilva@yahoo.com

💼 LinkedIn: https://www.linkedin.com/in/dominique-dasilva-2a2b93384/

🌐 GitHub: https://github.com/DomoDaS
