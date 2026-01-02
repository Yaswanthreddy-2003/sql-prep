--grouping of data
-- GROUP BY is used to group rows that have the same values in specified columns into summary rows, like "number of people living in a country"or
-- "total sales by department" or "average salary by job title". 
-- It is often used with aggregate functions like COUNT, SUM, AVG, MAX, and MIN.

--syntax
SELECT column1,aggregate_function(column2) FROM table_name WHERE condition GROUP BY column1;

USE SQL_PLACEMENTS;

SELECT country FROM CUSTOMERS GROUP BY country;-- This will return a list of unique countries from the CUSTOMERS table.
--similar to DISTINCT command when aggregate functions are not used.

SELECT COUNT(country),country FROM CUSTOMERS GROUP BY country; -- This will return the count of customers for each unique country.

SELECT COUNT(country),country FROM CUSTOMERS GROUP BY COUNTRY ORDER BY COUNT(country) DESC;-- This will return the count of customers for each unique country, ordered by the count in descending order.
--column 1 will be COUNT(country) and column 2 will be country.

--AS
-- The AS keyword is used to give a temporary name (alias) to a table or a column for the duration of a query.

SELECT COUNT(country) AS customer_count, country FROM CUSTOMERS GROUP BY country ; -- This will return the count of customers for each unique country with an alias for the count column.
--coulmn1 will be customer_count and column2 will be country.

--AVG
--SYNTAX SELECT AVG(column) FROM table_name WHERE CONDITION;

SELECT AVG(age) FROM CUSTOMERS WHERE id>=20;

SELECT AVG(AGE)+12 FROM CUSTOMERS WHERE id>=20;
SELECT AVG(age) AS average_age FROM CUSTOMERS WHERE id>=20; -- This will return the average age of customers with an alias for the average age column.

SELECT AVG(age),country FROM CUSTOMERS WHERE id<92 GROUP BY country; 
-- This will return the average age of customers grouped by country.

SELECT AVG(age),country FROM CUSTOMERS WHERE age> 46 GROUP BY country;

--Higher or lesser than average
SELECT * FROM CUSTOMERS WHERE age>(SELECT AVG(age) FROM CUSTOMERS);
SELECT COUNT(*) FROM CUSTOMERS WHERE age>(SELECT AVG(age) FROM CUSTOMERS);

--MIN,MAX
--SYNTAX SELECT MIN(column), MAX(column) FROM table_name WHERE CONDITION;

SELECT MIN(age),MAX(age) FROM CUSTOMERS;

SELECT MIN(age),country FROM CUSTOMERS GROUP BY country ORDER BY MIN(age) DESC; -- This will return the minimum age and country, ordered by minimum age in descending order.

SELECT MAX(age),country FROM CUSTOMERS GROUP BY country ORDER BY MAX(age) DESC; -- This will return the maximum age and country, ordered by maximum age in descending order.

--COUNT
SELECT COUNT(age), country FROM CUSTOMERS GROUP BY country ORDER BY COUNT(age) DESC; -- This will return the count of customers grouped by country, ordered by count in descending order.

--SUM
--SYNTAX SELECT SUM(column) FROM table_name WHERE CONDITION;

SELECT SUM(age) FROM CUSTOMERS WHERE country='USA';
SELECT SUM(age),country FROM CUSTOMERS GROUP BY country;

--HAVING 
--Groupby is used to group  rows that have similar value in specific columns.
--WHERE is used to  filter rows from the table before grouping,
--will not work on grouped data
--therefore HAVING is used to filter grouped data.

--For example
SELECT COUNT(country),country FROM CUSTOMERS WHERE COUNT(country)>5 GROUP BY country;
--output: Invalid syntax, because COUNT(country) is an aggregate function and cannot be used in the WHERE clause.

SELECT COUNT(country),country FROM CUSTOMERS GROUP BY country HAVING COUNT(country)>5;
