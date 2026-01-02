--update syntax
UPDATE table_name
SET column1 = value1, column2 = value2, ... --multiple columns can be updated at once
WHERE condition;--if the condition is not specified, the changes will be applied to all the rows in the table.

USE SQL_PLACEMENTS;

UPDATE customers
SET contact_name='Alfred Pennyworth', city='Gotham'
WHERE id=1;

SELECT * FROM customers WHERE id=1;

UPDATE customers
SET contact_name='Pedro' WHERE city='Madrid';

SELECT * FROM customers WHERE city='Madrid';

UPDATE customers SET postal_code='144411' WHERE id IN (1,6,7);

SELECT * FROM customers WHERE id in (1,6,7);

UPDATE workers SET SALARY=1.1*SALARY;--This will increase the salary of all workers by 10%.

SELECT * FROM workers;

--DELETE syntax
DELETE FROM table_name WHERE condition; --if the condition is not specified, all rows will be deleted.

DELETE FROM customers WHERE id=1;

SELECT * FROM customers;

INSERT INTO customers(id,customer_name, contact_name, address, city, postal_code, country, age) VALUES
(1, 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany', 52);

SELECT * FROM customers;





--limit
--The LIMIT clause is used to specify the maximum number of records to return in a query result. 
--It is often used with the ORDER BY clause to control the number of rows returned.

SELECT * FROM customers WHERE country='Mexico'; --4 queries

SELECT * FROM customers WHERE country='Mexico' LIMIT 2; --This will return only the first 2 rows that match the condition.

SELECT * FROM customers WHERE country='Mexico' ORDER BY contact_name DESC LIMIT 3;
