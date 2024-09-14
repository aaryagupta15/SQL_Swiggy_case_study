WITH favourite AS (SELECT o.user_id, od.f_id, COUNT(*) AS "FAVOURITE_FOOD" FROM swiggy.orders o
JOIN swiggy.order_details od 
ON o.order_id = od.order_id
GROUP BY o.user_id, od.f_id
)

SELECT * FROM favourite f1 WHERE f1.FAVOURITE_FOOD = (SELECT MAX(FAVOURITE_FOOD) FROM favourite f2 WHERE f2.user_id = f1.user_id)
