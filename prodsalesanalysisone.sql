-- 1068. Product Sales Analysis I

SELECT product_name, year, price
FROM Product INNER JOIN Sales 
USING(product_id)
