SELECT
    MONTH(date) AS month,
    SUM(amount) AS monthly_revenue,
    (SUM(amount) - LAG(SUM(amount)) OVER (ORDER BY MONTH(date))) / LAG(SUM(amount)) OVER (ORDER BY MONTH(date)) * 100 AS revenue_growth_percentage
FROM orders
GROUP BY month
ORDER BY month;
