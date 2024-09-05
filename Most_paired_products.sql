SELECT f1.f_name AS food_item_1, f2.f_name AS food_item_2, COUNT(*) AS pair_count
FROM order_details od1
JOIN order_details od2 ON od1.order_id = od2.order_id AND od1.f_id < od2.f_id
JOIN food f1 ON od1.f_id = f1.f_id
JOIN food f2 ON od2.f_id = f2.f_id
GROUP BY food_item_1, food_item_2
ORDER BY pair_count DESC
LIMIT 1;
