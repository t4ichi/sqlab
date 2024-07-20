SELECT name
FROM books
WHERE id NOT IN(
  SELECT books.id
  FROM books
  JOIN book_sales
  ON books.id = book_sales.book_id
  WHERE book_sales.store_id != 3
);