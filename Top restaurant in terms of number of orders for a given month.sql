SELECT r_name, count(*) FROM swiggy.orders o JOIN swiggy.restaurants r ON r.r_id = o.r_id 
WHERE monthname(date) = 'June'
GROUP BY r_name 
ORDER BY COUNT(*) DESC LIMIT 1
