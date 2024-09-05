SELECT r_name, SUM(amount) AS monthly_sales
FROM orders
JOIN restaurant ON orders.r_id = restaurant.r_id
WHERE MONTH(date) = 7 
GROUP BY r_name
HAVING monthly_sales > 5000; 
