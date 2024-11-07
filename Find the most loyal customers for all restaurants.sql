SELECT r_name, users.name, COUNT(orders.user_id) AS 'total_orders'
FROM orders
JOIN restaurant ON orders.r_id = restaurant.r_id
JOIN users ON orders.user_id = users.user_id
GROUP BY r_name, users.name HAVING COUNT(orders.user_id)>1
