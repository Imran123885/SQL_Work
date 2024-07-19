-- CREATE TABLE contacts (
-- 	name VARCHAR(50) NOT NULL,
--     phone VARCHAR(15) NOT NULL UNIQUE
-- );

-- INSERT INTO contacts (name, phone) VALUES ('billybob', '8781213455');

-- CREATE TABLE users (
-- 	username VARCHAR(20) NOT NULL,
--     age INT CHECK (age>0)
-- );

-- CREATE TABLE palindrome (
-- 	word VARCHAR(100) CHECK (REVERSE(word) = word)
-- );

-- INSERT INTO palindrome(word) VALUES ('sigmaamgis');

-- CREATE TABLE users2 (
-- 	username VARCHAR(20) NOT NULL,
--     age INT,
--     CONSTRAINT age_positive CHECK (age >= 0)
-- );

-- CREATE TABLE companies (
-- 	name VARCHAR(255) NOT NULL, 
--     address VARCHAR(255) NOT NULL,
--     CONSTRAINT name_address UNIQUE (name, address)
-- );

-- ALTERING TABLE 

-- ALTER TABLE companies
-- ADD COLUMN phone VARCHAR(15); --> ADD phone-number

-- ALTER TABLE companies
-- ADD COLUMN employee_count INT NOT NULL DEFAULT 1;

-- DROP COLUMN
-- ALTER TABLE companies DROP COLUMN phone;

-- RENAME TABLE
-- RENAME TABLE companies TO suppliers;
-- ALTER TABLE suppliers RENAME TO companies;

-- RENAME COLUMN
-- ALTER TABLE companies 
-- RENAME COLUMN name TO company_name;

-- MODIFY TABLE COLUMNS
-- ALTER TABLE companies MODIFY company_name VARCHAR(100) DEFAULT 'unknown';

-- MODIFY COLUMN AND CHANGE NAME
-- ALTER TABLE companies
-- CHANGE business biz_name VARCHAR(50);

-- ALTER TABLE CONSTRAINTS
-- ALTER TABLE houses ADD CONSTRAINT positive_pprice CHECK (purchase_price>=0);



