SELECT authors.name, COUNT(*) AS published_title_num
FROM books
JOIN book_authors
ON books.id = book_authors.book_id
JOIN authors
ON book_authors.author_id = authors.id
GROUP BY authors.name
ORDER BY published_title_num DESC,authors.name ASC
LIMIT 3;