SELECT o.user_id, o.order_id, r.r_name,od.f_id, f.f_name FROM zomato.orders o
JOIN zomato.restaurants r
on o.r_id = r.r_id
JOIN zomato.order_details od
ON o.order_id = od.order_id
JOIN zomato.food f
ON f.f_id = od.f_id 
WHERE user_id = (SELECT user_id FROM zomato.users WHERE name LIKE 'Ankit')
AND (date > '2022-05-30' AND date <= '2022-06-30')
