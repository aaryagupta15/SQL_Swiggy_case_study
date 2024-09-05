SELECT users.name, food.f_name, COUNT(order_details.f_id) AS total_orders
FROM orders
JOIN order_details ON orders.order_id = order_details.order_id
JOIN users ON orders.user_id = users.user_id
JOIN food ON order_details.f_id = food.f_id
GROUP BY users.name, food.f_name
ORDER BY total_orders DESC;
