Walmart Sales Data Analysis (SQL Project)
      
📘 About Project


This project analyzes Walmart sales data using MySQL.
The main goal is to find business insights like — best payment method, busiest branch, top category, profit, etc.

🗂️ Dataset Info

The dataset walmart has daily sales records with columns like:

invoice_id, branch, city

category, unit_price, quantity, total, date, time

payment_method, rating, profit_margin

🧠 SQL Topics Used

GROUP BY, ORDER BY, WHERE

Aggregate functions (SUM, AVG, MIN, MAX, COUNT)

Window functions (RANK() OVER)

CASE WHEN (for time-based shifts)

Date & time functions (YEAR(), HOUR())

🔍 Main Questions Solved

Payment methods – Total transactions and quantity.

Top-rated category – In each branch.

Busiest day – Based on transactions.

Quantity sold per payment method.

Avg, Min & Max rating – Per city and category.

Total profit per category.

Most common payment method per branch.

Sales shifts – Morning, Afternoon, Evening.

Branches with revenue decrease (2023 vs 2022).

⚙️ Tools Used

MySQL (for analysis)

VS Code / MySQL Workbench (for running queries)

Git & GitHub (for version control)

🚀 How to Run


git clone https://github.com/<your-username>/Project_walmart.git


Then open MySQL and run:

CREATE DATABASE walmart_db;
USE walmart_db;
SOURCE walmart_analysis.sql;

👤 Author

Raghav Pratap
💻 Data Analytics Enthusiast | SQL • Python • Excel
