SELECT name
FROM books
JOIN book_sales
ON books.id = book_sales.book_id
GROUP BY name
HAVING SUM(book_sales.stock) = 0;