SELECT u.name, f.f_name, COUNT(od.f_id) AS order_count
FROM users u
JOIN orders o ON u.user_id = o.user_id
JOIN order_details od ON o.order_id = od.order_id
JOIN food f ON od.f_id = f.f_id
GROUP BY u.user_id, f.f_name
ORDER BY order_count DESC;