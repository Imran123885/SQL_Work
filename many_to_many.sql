-- CREATE TABLE reviewers (
-- 	id INT PRIMARY KEY AUTO_INCREMENT,
--     first_name VARCHAR(50) NOT NULL,
--     last_name VARCHAR(50) NOT NULL
-- );

-- CREATE TABLE series (
-- 	id INT PRIMARY KEY AUTO_INCREMENT,
--     title VARCHAR(100),
--     released_year YEAR,
--     genre VARCHAR(100)
-- );

-- CREATE TABLE reviews (
-- 	id INT PRIMARY KEY AUTO_INCREMENT,
--     rating DECIMAL(2,1),
--     series_id INT,
--     reviewer_id INT,
--     FOREIGN KEY (series_id) REFERENCES series(id),
--     FOREIGN KEY (reviewer_id) REFERENCES reviewers(id)
-- );

-- SELECT title, rating FROM reviews
-- JOIN series ON reviews.series_id = series.id; 

-- SELECT title, AVG(rating) AS avg_rating FROM reviews JOIN series ON reviews.series_id = series.id
-- GROUP BY title ORDER BY avg_rating;

-- SELECT first_name, last_name, rating FROM reviews JOIN reviewers ON reviewers.id = reviews.reviewer_id;

-- SELECT title AS unreviewed_series FROM series LEFT JOIN reviews ON series.id=reviews.series_id WHERE rating IS NULL;

-- SELECT genre, AVG(rating) AS avg_rating FROM series JOIN reviews ON reviews.series_id = series.id
-- GROUP BY genre;

-- SELECT title AS unreviewed_series FROM series LEFT JOIN reviews 
-- ON series.id=reviews.series_id WHERE rating IS NULL;

SELECT 
	first_name, 
	last_name, 
	COUNT(rating) AS COUNT, 
	IFNULL(MIN(rating), 0) AS MIN, 
	IFNULL(MAX(rating), 0) AS MAX, 
	ROUND(IFNULL(AVG(rating),0),2) AS average,
	CASE
		WHEN COUNT(rating) THEN 'ACTIVE'
		ELSE 'INACTIVE'
	END AS status
	FROM reviewers 
	LEFT JOIN reviews ON reviewers.id = reviews.reviewer_id 
	GROUP BY first_name, last_name;

SELECT title, rating, CONCAT_WS(' ', first_name, last_name) AS reviewer
FROM reviews 
JOIN reviewers ON reviews.reviewer_id = reviewers.id 
JOIN series ON series.id = reviews.series_id
ORDER BY title;











