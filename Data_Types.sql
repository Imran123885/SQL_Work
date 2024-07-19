-- INSERT INTO friends (name) VALUES ('tom'), ('juan pablo'), ('james');
-- CREATE TABLE sigma (name CHAR(3));

-- VARCHAR --> Allows for user to enter any set of characters that are less than or equal to specifized size i.e. VARCHAR(50)
-- CHAR --> Allows for user to enter a specific amount of characters. Storage in memory is optimized for set amount of chars,
-- however, if size of user_input is not close to specified amount, then padding will automatically be implemented, wasating memory.
-- INT: Regular int stored with 8 bytes, max value of 2 billionish (- and +). 
-- TINYINT: stored in 1 byte, min of -128, max of 127
-- UNSIGNED: For all integers/floats, changes range to be only positive numbers, not negative i.e. above was -128 to 127, with 
-- unsigned it is 0 to 255
-- UNSIGNED EXAMPLE: CREATE TABLE parent (children TINYINT UNISIGNED);
-- DECIMAL: SYNTAX= DECIMAL(x,y), where x is the total # of digits and y is the # of digits after the decimal.
-- FLOAT: Memory Needed - 4 bytes Precision Issues ~ 7 digits
-- DOUBLE: Memory Needed - 8 bytes Precision Issues ~ 15 digits
-- DATE: Values with a date but no time 'YYYY-MM-DD' Format
-- TIME: Time but no date. Can represent amount or interval of time.
-- DATETIME: Values with date and time. 'YYYY-MM-DD HH:MM:SS'

-- CREATE TABLE people (
-- 	name VARCHAR(100),
--     birthdate DATE,
--     birthtime TIME,
--     birthdt DATETIME
-- );

-- INSERT INTO people (name, birthdate, birthtime, birthdt)
-- VALUES ('Hazel', CURDATE(), CURTIME(), NOW());
-- SELECT NOW(), CURDATE(), CURTIME();

-- Date extraction functions
-- SELECT 
--     birthdate,
--     DAY(birthdate),
--     DAYOFWEEK(birthdate),
--     DAYOFYEAR(birthdate)
-- FROM people;
--  
-- SELECT 
--     birthdate,
--     MONTHNAME(birthdate),
--     YEAR(birthdate)
-- FROM people;

-- SELECT 
--     birthtime,
--     HOUR(birthtime),
--     MINUTE(birthtime)
-- FROM people;
--  
-- SELECT 
--     birthdt,
--     MONTH(birthdt),
--     DAY(birthdt),
--     HOUR(birthdt),
--     MINUTE(birthdt)
-- FROM people;

-- Date formatting
-- SELECT CONCAT_WS(' ', MONTHNAME(birthdate), DAY(birthdate), YEAR(birthdate)) AS date FROM people;
-- SELECT birthdate, DATE_FORMAT(birthdate, '%b') FROM people;
-- SELECT birthdate, DATE_FORMAT(birthdate, '%a %b %D') FROM people;

-- Date operations
-- SELECT birthdate, DATEDIFF(CURDATE(), birthdate) FROM people; --> days 
-- SELECT DATE_ADD(CURDATE(), INTERVAL 12 YEAR); --> date 12 years afterwards
-- SELECT DATE_SUB(CURDATE(), INTERVAL 12 YEAR); --> date 12 years before
-- SELECT birthdate, DATE_ADD(birthdate, INTERVAL 18 YEAR) FROM people;
-- SELECT TIMEDIFF(CURTIME(), '07:00:00');
-- SELECT birthdate, YEAR(birthdate + INTERVAL 21 YEAR) FROM people;
-- SELECT TIMESTAMP('2018-12-25 09:00:00'); TIMESTAMPS CAN ONLY STORE VALUES FROM 1970 TO 2038, 1-19

CREATE TABLE captions (
	text VARCHAR(50),
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE captions2 (
	text VARCHAR(50),
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
