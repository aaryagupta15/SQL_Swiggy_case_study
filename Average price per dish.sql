SELECT f.f_name, AVG(m.price) AS "Avg Price" 
FROM zomato.menu m 
JOIN zomato.food f ON m.f_id = f.f_id 
GROUP BY f.f_name;
