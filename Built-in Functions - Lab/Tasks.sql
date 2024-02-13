-- 01. Find Book Titles
SELECT title from books
WHERE title LIKE 'The%'
ORDER BY id;


-- 02. Replace Titles
SELECT 
REPLACE(title, 'The', '***')
FROM books
WHERE title LIKE 'The%'
ORDER BY id;


-- 03. Sum Cost of All Books
SELECT ROUND(SUM(cost), 2) from books;


-- 04. Days Lived
SELECT
	CONCAT(first_name, ' ', last_name) AS 'Full Name',
	ABS(TIMESTAMPDIFF(DAY, died, born)) AS 'Days Lived'
From authors;


-- 05. Harry Potter Books
SELECT title from books
WHERE title Like 'Harry Potter%'
ORDER BY id;