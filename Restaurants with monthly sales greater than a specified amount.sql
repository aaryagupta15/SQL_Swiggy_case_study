SELECT r_name, SUM(amount) AS 'monthy sale' FROM zomato.orders o
JOIN zomato.restaurants r 
ON o.r_id = r.r_id
WHERE MONTHNAME(date) = 'June' 
GROUP BY r_name
HAVING SUM(amount)>500
