show databases;
use walmart_db;
show tables;
select * from walmart;
select count(*) from walmart;

select
count(distinct branch)
from walmart;
select min(quantity) from walmart;


 -- Q1 find differnt payment method and no of transactions , no of quantity sold;
 
SELECT 
    payment_method,
    COUNT(*) AS total_transactions,
    SUM(quantity) AS total_quantity_sold
FROM walmart
GROUP BY payment_method;

-- Q2 identify the highest rate category category in each branch , displaying the branch , category
-- avg rating 

select * from
(select 
branch,
category,
avg(rating),
RANK() over (partition by branch order by avg(rating) asc) as rnk
from walmart
group by branch , category) as ranked
where rnk = 1 ;

-- Q3 identify the buisiest day for each branch based on no of transaction 

SELECT branch, day, total_transactions
FROM (
    SELECT 
        branch,
        DATE(`date`) AS day,
        COUNT(*) AS total_transactions,
        RANK() OVER (PARTITION BY branch ORDER BY COUNT(*) DESC) AS rnk
    FROM walmart
    GROUP BY branch, DATE(`date`)
) AS ranked
WHERE rnk = 1;


-- Q4 calculate the total quantity of items sold per payment method. list payement_method and total quantity 

select payment_method,
sum(quantity) as total_quantity
from walmart
group by payment_method;
 -- Q5 determine the average , minimum and  maximum rating of the category for each city . List the city and avg rating min ad max rating 
 
 select  city, category,
 avg(rating),
 min(rating),
 max(rating)

from walmart 
group by city , category ;


 --  Q6 Calculate the total profit for each category by considering total_profit as
-- (unit_price * quantity * profit_margin).
-- List category and total_profit, ordered from highest to lowest profit
select category,
  sum( unit_price * quantity * profit_margin) as total_profit
  from walmart 
  group by category
  order by total_profit desc;
  
 -- Q7  Determine the most common payment method for each Branch.
-- Display Branch and the preferred_payment_method.
select*from walmart;

SELECT 
    branch,
    payment_method
FROM (
    SELECT 
        branch,
        payment_method,
        COUNT(*) AS total_transactions,
        RANK() OVER (PARTITION BY branch ORDER BY COUNT(*) DESC) AS rnk
    FROM walmart
    GROUP BY branch, payment_method
) AS ranked
WHERE rnk = 1;
-- Q8
-- Categorize sales into 3 groups: MORNING, AFTERNOON, and EVENING.
-- Find out each of the shift and the number of invoices.

select
case
      when hour(time) < 12 THEN 'Morning'
            when hour(time) BETWEEN 12 AND 17 THEN 'Afternoon'
            else 'Evening'
            END AS Shift,
            
COUNT(invoice_id) AS NUMBER_OF_INVOICES
FROM walmart
GROUP BY SHIFT;
 -- Q9. Identify 5 branches with the highest decrease ratio in revenue compared to last year (current year 2023 and last year 2022).
 select*from walmart;

SELECT 
    r2023.Branch,
    r2022.revenue_2022,
    r2023.revenue_2023,
    ROUND(((r2022.revenue_2022 - r2023.revenue_2023) / r2022.revenue_2022) * 100, 2) AS decrease_percentage
FROM 
    (SELECT Branch, SUM(total) AS revenue_2023
     FROM walmart
     WHERE YEAR(STR_TO_DATE(date, '%d/%m/%y')) = 2023
     GROUP BY Branch) AS r2023
JOIN 
    (SELECT Branch, SUM(total) AS revenue_2022
     FROM walmart
     WHERE YEAR(STR_TO_DATE(date, '%d/%m/%y')) = 2022
     GROUP BY Branch) AS r2022
ON r2023.Branch = r2022.Branch
WHERE r2023.revenue_2023 < r2022.revenue_2022
ORDER BY decrease_percentage DESC
LIMIT 5;










            
            
            
            
            
            
            
            
            
            
            
            
	




















