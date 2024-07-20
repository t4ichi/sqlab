SELECT categories.name, SUM(book_sales.price * book_sales.figure) AS sales
FROM books
JOIN book_sales
ON books.id = book_sales.book_id
-- カテゴリ結合
JOIN book_categories
ON books.id = book_categories.book_id
-- カテゴリ名結合
JOIN categories
ON book_categories.category_id = categories.id
GROUP BY categories.name
ORDER BY sales DESC
LIMIT 3;
