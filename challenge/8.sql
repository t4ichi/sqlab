SELECT name
FROM books
JOIN book_categories
ON books.id = book_categories.book_id
GROUP BY books.name
HAVING COUNT(books.name) >= 2;