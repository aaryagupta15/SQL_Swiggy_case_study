SELECT r.r_name, u.name, COUNT(o.user_id) AS order_count
FROM orders o
JOIN users u ON o.user_id = u.user_id
JOIN restaurant r ON o.r_id = r.r_id
GROUP BY r.r_name, u.name
ORDER BY order_count DESC;
