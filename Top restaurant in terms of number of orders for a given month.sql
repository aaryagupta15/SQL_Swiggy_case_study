SELECT r_name, COUNT(order_id) AS total_orders
FROM restaurant r
JOIN orders o ON r.r_id = o.r_id
WHERE MONTH(o.date) = 6 
GROUP BY r_name
ORDER BY total_orders DESC
LIMIT 1;