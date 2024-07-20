SELECT name, SUM(price*figure)  AS sales
FROM book_sales 
JOIN stores
ON book_sales.store_id = stores.id
GROUP BY name
ORDER BY name ASC;