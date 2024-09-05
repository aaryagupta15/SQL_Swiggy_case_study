SELECT
    DATE_FORMAT(date, '%Y-%m') AS month,
    SUM(amount) AS monthly_revenue,
    (SUM(amount) - LAG(SUM(amount)) OVER (ORDER BY DATE_FORMAT(date, '%Y-%m'))) / LAG(SUM(amount)) OVER (ORDER BY DATE_FORMAT(date, '%Y-%m')) * 100 AS revenue_growth_percentage
FROM orders
GROUP BY month
ORDER BY month;
