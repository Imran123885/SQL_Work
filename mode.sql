SELECT @@GLOBAL.sql_mode; -- Shows global sql mode
SELECT @@SESSION.sql_mode; -- Shows session sql mode

-- STRICT_TRANS_TABLES makes it so that we can 
-- not keep insert ncorrect data types into table
-- columns

-- ONLY_FULL_GROUP_BY makes it so that you can only
-- select columns that are 
-- 1. Being affected by an aggregate function
-- 2. Being grouped by the "GROUP BY" clause

-- NO_ZERO_IN_DATE & NO_ZERO_DATE make it so that any part 
-- of your date can be only zeros ('2010-09-00')
-- NO_ZERO_DATE - ('0000-00-00')

SET SESSION sql_mode = 
'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,
NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
