SELECT r.r_name, YEAR(date) AS year, MONTH(date) AS month, SUM(amount) AS total_revenue,
       (SUM(amount) - LAG(SUM(amount)) OVER (PARTITION BY r.r_id ORDER BY YEAR(date), MONTH(date))) / LAG(SUM(amount)) OVER (PARTITION BY r.r_id ORDER BY YEAR(date), MONTH(date)) * 100 AS revenue_growth_percentage
FROM orders o
JOIN restaurant r ON o.r_id = r.r_id
GROUP BY r.r_name, YEAR(date), MONTH(date);
