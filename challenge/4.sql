SELECT name ,book_sales.price,book_sales.price * 0.1 AS tax
FROM books
JOIN book_sales
ON books.id = book_sales.book_id;