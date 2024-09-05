SELECT o.order_id, o.date, r.r_name, f.f_name, od.f_id
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
JOIN food f ON od.f_id = f.f_id
JOIN restaurant r ON o.r_id = r.r_id
WHERE o.user_id = 1 
AND o.date BETWEEN '2022-06-01' AND '2022-06-30';