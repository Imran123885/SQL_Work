-- concat, substring

-- SELECT CONCAT(author_fname, ' ', author_lname) AS author_name FROM books;
-- SELECT CONCAT_WS('-', title, author_fname, author_lname) AS author_name FROM books;

-- SELECT SUBSTRING('HELLO WORLD', 1, 6) (returns HELLO)
-- SELECT SUBSTRING('HELLO WORLD', 7) (returns WORLD)

-- SELECT 
--     CONCAT(SUBSTR(title, 1, 10), '...') AS titles
-- FROM
--     books;

-- SELECT REPLACE('alpha', 'alpha', 'sigma');
-- SELECT REVERSE(SIGMA); --> AMGIS

-- SELECT CHAR_LENGTH('SIGMA'); --> 5 (5 characters long)
-- SELECT LENGTH('SIGMA'); --> 5 (takes up 5 bits in memory) 
-- NOTE: some characters might take up more bits in memory. i.e, characters from other languages

-- SELECT UPPER('sigma'); --> 'SIGMA'
-- SELECT LOWER('SIGMA'); --> 'sigma'

-- SELECT INSERT('Hello Bobby', 6, 0, ' There'); --> Hello There Bobby
-- SELECT INSERT('Hello Bobby', 6, 6, 'There'); --> Hello There

-- SELECT LEFT('sigma', 3); --> sig
-- SELECT RIGHT('sigma', 3); --> gma

-- SELECT REPEAT('ha', 4); --> hahahaha

-- SELECT TRIM('    EH.   '); --> EH.
-- SELECT TRIM(LEADING '.' FROM '......EH.   '); --> EH.