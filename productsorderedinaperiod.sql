-- 1327. List the Products Ordered in a Period

SELECT p.product_name, SUM(o.unit) AS unit
FROM Products p
LEFT JOIN Orders o
ON p.product_id = o.product_id
WHERE MONTH(order_date) = '02' AND YEAR(order_date) = '2020'
GROUP BY p.product_name
HAVING unit >= 100 
