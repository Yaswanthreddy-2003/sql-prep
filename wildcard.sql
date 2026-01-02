--LIKE operator used  in WHERE to search for a specified pattern in a column.
-- Wildcards Used with LIKE:
-- 1. % (Percent Sign)
-- Represents zero, one, or more characters.

-- Example patterns:

-- 'a%' → Matches any string starting with 'a' (e.g., 'a', 'apple', 'and')

-- '%a' → Matches any string ending with 'a' (e.g., 'a', 'ba', 'cda')

-- '%a%' → Matches any string containing 'a' anywhere (e.g., 'apple', 'banana')

-- 2. _ (Underscore)
-- Represents exactly one character.

-- Example patterns:

-- '_a' → Matches any two-character string with 'a' as the second character (e.g., 'ba', 'ca', '1a')

-- 'a_' → Matches any two-character string starting with 'a' (e.g., 'ab', 'a1')

USE SQL_PLACEMENTS;

INSERT INTO customers(id,customer_name, contact_name, address, city, postal_code, country, age) VALUES
(92, 'alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany', 52),
(93, 'ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'México D.F.', '05021', 'Mexico', 45);

SELECT * FROM customers WHERE customer_name LIKE 'a%'; -- Matches any customer name starting with 'a' a is case insensitive.can be both a or A.

SELECT * FROM customers WHERE city LIKE 'l_nd__';

SELECT * FROM customers WHERE customer_name LIKE '%a%'; -- Matches any customer name containing 'a' anywhere.

SELECT * FROM customers WHERE customer_name LIKE '%a'; -- Matches any customer name ending with 'a'.

SELECT * FROM customers WHERE customer_name LIKE 'b%s'; -- Matches any customer name starting with 'b' and ending with 's'.

SELECT * FROM customers WHERE customer_name LIKE '%or%'; -- Matches any customer name containing 'or' anywhere.

SELECT * FROM customers WHERE customer_name LIKE 'a__%';--starts with a and length is atleast 3 char.

-- _r%  atleast 2 char, 2nd char is r.

