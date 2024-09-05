SELECT YEAR(date) AS year, MONTH(date) AS month, SUM(amount) AS total_revenue,
       (SUM(amount) - LAG(SUM(amount)) OVER (ORDER BY YEAR(date), MONTH(date))) / LAG(SUM(amount)) OVER (ORDER BY YEAR(date), MONTH(date)) * 100 AS revenue_growth_percentage
FROM orders
GROUP BY YEAR(date), MONTH(date);