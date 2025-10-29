🛒 Walmart Sales Data Analysis (SQL Project)

📘 About Project

This project analyzes Walmart sales data using MySQL.
The main goal is to extract meaningful business insights such as the best payment method, busiest branch, top-selling category, and profit trends.


.

🗂️ Dataset Information

The dataset walmart contains daily sales records with columns like:

• invoice_id, branch, city

• category, unit_price, quantity, total, date, time

• payment_method, rating, profit_margin


Key Business Questions Solved

1 Total transactions and quantity sold by payment method

2 Top-rated category in each branch

3 Busiest day based on total transactions

4 Quantity sold per payment method

5 Average, minimum, and maximum rating by city and category

6 Total profit per category

7 Most common payment method per branch

8 Sales shifts — Morning, Afternoon, Evening (based on time)

9 Branches with revenue decrease (2023 vs 2022)


Tools Used

• MySQL – for data analysis

• VS Code / MySQL Workbench – for running queries

• Git & GitHub – for version control and project sharing

How to Run

git clone https://github.com/<meraghav18>/Project_walmart.git

Then open MySQL and run:

CREATE DATABASE walmart_db;


USE walmart_db;


SOURCE walmart_analysis.sql;



👤 Author
Raghav Pratap
💻 Data Analytics Enthusiast | SQL • Python • Excel


