SELECT * 
FROM books
WHERE release_year IN (
  	SELECT release_year
  	FROM books
  	WHERE name = '時短レシピ100'
  	OR name = 'かもめ飛行'
);