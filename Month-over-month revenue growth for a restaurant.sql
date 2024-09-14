WITH sales AS (
     SELECT 
          r_id, 
          monthname(date) AS month, 
          SUM(amount) AS revenue
     FROM 
          swiggy.orders
     GROUP BY 
          r_id, monthname(date)
), 

growth AS (
     SELECT 
          r_id, 
          month, 
          revenue, 
          LAG(revenue, 1) OVER (PARTITION BY r_id ORDER BY month) AS prev
     FROM 
          sales
)

SELECT 
     r_id, 
     month, 
     revenue, 
     prev, 
     ((revenue - prev) / prev) * 100 AS revenue_growth_percentage
FROM 
     growth
WHERE 
     prev IS NOT NULL
ORDER BY 
     r_id, month;
