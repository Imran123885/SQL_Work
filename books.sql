-- SELECT COUNT(*) FROM books;
-- SELECT released_year, COUNT(*) FROM books GROUP BY released_year ORDER BY released_year;
-- SELECT SUM(stock_quantity) AS total_books_in_stock FROM books;
-- SELECT CONCAT(author_fname, ' ', author_lname) AS full_name, AVG(released_year) FROM books GROUP BY full_name;

-- SELECT CONCAT(author_fname, ' ', author_lname) AS full_name 
-- FROM books
-- WHERE pages=(SELECT MAX(pages) FROM books);

-- SELECT released_year AS year, COUNT(*) AS num_of_books, AVG(pages) FROM books GROUP BY year ORDER BY year;