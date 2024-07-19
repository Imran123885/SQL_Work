-- SELECT COUNT(*) AS number_of_rows FROM books;
-- SELECT COUNT(author_fname) AS number_of_firstnames FROM books;
-- SELECT COUNT(DISTINCT author_fname) FROM books;
-- SELECT COUNT(*) FROM books WHERE title LIKE '%the%';

-- GROUP BY
-- SELECT released_year, COUNT(*) AS sigma FROM books GROUP BY released_year ORDER BY sigma DESC;
-- SELECT MAX(pages) FROM books; SELECT MIN(pages) FROM books;

-- SUB QUERIES
-- SELECT title, pages FROM books
-- WHERE pages = (
-- 	SELECT MAX(pages) FROM books
-- );alter

-- MIN W/ GROUP BY
-- SELECT author_lname, MIN(released_year) FROM books GROUP BY author_lname;
-- SELECT 
-- 	author_lname,
--     author_fname,
--     COUNT(*) AS books_written,
--     MAX(released_year) AS latest_release,
--     MIN(released_year) AS earliest_release
-- FROM books GROUP BY author_lname, author_fname;

-- SUM & AVG
-- SELECT author_lname, SUM(pages) FROM books GROUP BY author_lname,author_fname;
-- SELECT AVG(pages) FROM books;
-- SELECT released_year, AVG(stock_quantity), COUNT(*) AS books_sold_in_year FROM books GROUP BY released_year;


