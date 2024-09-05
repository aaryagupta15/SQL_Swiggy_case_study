SELECT 
    restaurant.r_name,
    MONTH(orders.date) AS month,
    SUM(orders.amount) AS monthly_revenue,
    (SUM(orders.amount) - LAG(SUM(orders.amount)) OVER (PARTITION BY restaurant.r_id ORDER BY MONTH(orders.date))) / 
    LAG(SUM(orders.amount)) OVER (PARTITION BY restaurant.r_id ORDER BY MONTH(orders.date)) * 100 AS revenue_growth_percentage
FROM 
    orders
JOIN 
    restaurant ON orders.r_id = restaurant.r_id
GROUP BY 
    restaurant.r_name, month
ORDER BY 
    restaurant.r_name, month;
