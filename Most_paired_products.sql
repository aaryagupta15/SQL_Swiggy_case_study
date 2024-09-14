SELECT 
    p1.f_id AS product_1, 
    p2.f_id AS product_2, 
    COUNT(*) AS pair_count
FROM 
    swiggy.order_details p1
JOIN 
    swiggy.order_details p2 
    ON p1.order_id = p2.order_id 
    AND p1.f_id < p2.f_id
GROUP BY 
    p1.f_id, p2.f_id
ORDER BY 
    pair_count DESC
LIMIT 10;
