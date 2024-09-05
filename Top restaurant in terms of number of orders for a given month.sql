SELECT r_name, COUNT(*) AS total_orders
FROM orders
JOIN restaurant ON orders.r_id = restaurant.r_id
WHERE MONTH(date) = 6
GROUP BY r_name
ORDER BY total_orders DESC
LIMIT 1;
