-- SELECT title, author_lname FROM books WHERE author_lname != 'Gaiman'; <not equal to>
-- SELECT title, author_lname FROM books WHERE author_lname NOT LIKE '% %';

-- SELECT * FROM books WHERE released_year > 2000;
-- SELECT * FROM books WHERE released_year <= 2000;

-- SELECT title, author_lname, released_year 
-- FROM books WHERE author_lname='Eggers' 
-- AND released_year > 2010 AND  title LIKE '%novel%';

-- SELECT title, released_year FROM books WHERE released_year BETWEEN 2004 AND 2015;
-- SELECT title, released_year FROM books WHERE released_year NOT BETWEEN 2004 AND 2015;

-- COMPARING DATES
-- SELECT * FROM people WHERE birthdate < '2005-01-01';
-- SELECT * FROM people WHERE birthtime BETWEEN CAST('2:00:00' AS TIME) AND CAST('12:00:00' AS TIME);

-- IN keyword
-- SELECT title, author_lname FROM books WHERE author_lname IN ('Carver', 'Lahiri', 'Smith');
-- SELECT title, author_lname FROM books WHERE author_lname NOT IN ('Carver', 'Lahiri', 'Smith');

-- Modulo
-- SELECT title, released_year FROM books WHERE released_year % 2 != 0 AND released_year >= 2000;

-- Cases (if statements)
-- SELECT title, released_year,
-- CASE
-- 	WHEN released_year >= 2000 THEN 'modern lit'
--     ELSE '20th century lit'
-- END AS genre
-- FROM books;

-- SELECT title, stock_quantity,  
-- CASE 
-- 	WHEN stock_quantity BETWEEN 1 AND 40 THEN '*' 
--     WHEN stock_quantity BETWEEN 41 AND 100 THEN '**'
--     ELSE '***'  
-- END AS quantity 
-- FROM books 
-- ORDER BY CHAR_LENGTH(quantity) DESC, stock_quantity DESC;

-- SELECT books WHERE title IS NULL;
    