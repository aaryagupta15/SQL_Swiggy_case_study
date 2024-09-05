SELECT r_name, SUM(amount) AS total_sales
FROM restaurant r
JOIN orders o ON r.r_id = o.r_id
WHERE MONTH(o.date) = 7 -- Specify the month
GROUP BY r_name
HAVING total_sales > 500; -- Replace 500 with your specified amount