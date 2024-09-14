SELECT month,((revenue - prev)/prev)*100 FROM (
WITH sales AS
     (SELECT monthname(date) AS "month", SUM(amount) AS revenue
      FROM swiggy.orders
      GROUP BY monthname(date)
	  ORDER BY revenue DESC)
SELECT "month", revenue, LAG(revenue,1) OVER (ORDER BY revenue) AS prev FROM sales) t
