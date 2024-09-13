SELECT f.f_name, avg(price) as'Avg Price' FROM swiggy.menu m 
JOIN swiggy.food f ON m.f_id = f.f_id 
GROUP BY m.f_id
