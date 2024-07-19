INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
           
-- SELECT DISTINCT author_lname FROM books; --> get unique values from data
-- SELECT DISTINCT CONCAT(author_fname, ' ', author_lname) FROM books;

-- SELECT book_id, author_fname, author_lname FROM books ORDER BY author_lname;
-- SELECT book_id, author_fname, author_lname FROM books ORDER BY author_lname DESC; Does it in descending order

-- SELECT CONCAT(author_fname, ' ', author_lname) AS fullname FROM books ORDER BY fullname;

-- SELECT title, author_fname, author_lname FROM books WHERE author_fname LIKE '%da%'; Also use '_a_' to get specifically 3 character long word
