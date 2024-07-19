SELECT title, released_year, genre, rating, first_name, last_name
FROM reviews
JOIN series on series.id = reviews.series_id
JOIN reviewers ON reviewers.id = reviews.reviewer_id;

CREATE VIEW full_reviews AS
SELECT title, released_year, genre, rating, first_name, last_name
FROM reviews
JOIN series on series.id = reviews.series_id
JOIN reviewers ON reviewers.id = reviews.reviewer_id;

-- Can not:
-- 1. Delete
-- 2. Insert
-- 3. Update
-- 4. GROUP BY

-- SELECT title, AVG(rating) FROM full_reviews GROUP BY 
-- title HAVING COUNT(rating) > 1;

 -- SELECT title, AVG(rating) FROM full_reviews 
--  GROUP BY title WITH ROLLUP;

-- SELECT released_year, genre, AVG(rating) FROM full_reviews
-- GROUP BY released_year, genre WITH ROLLUP;