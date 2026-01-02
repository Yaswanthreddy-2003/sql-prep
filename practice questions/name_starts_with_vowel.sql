--Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

SELECT DISTINCT CITY FROM STATION WHERE CITY REGEXP '^[aeiouAEIOU]';
--regexp is used for pattern matching. ^ indicates the start of the string, [aeiouAEIOU] indicates any vowel character (both lowercase and uppercase).

--method 2
SELECT DISTINCT CITY FROM STATION WHERE LEFT(CITY,1) IN ('A','E','I','O','U','a','e','i','o','u');
--left function is used to extract the first character of the CITY name and check if it is in the list of vowels.

--method 3
SELECT DISTINCT CITY FROM STATION WHERE lower(city) LIKE 'a%' OR lower(city) LIKE 'e%' OR lower(city) LIKE 'i%' OR lower(city) LIKE 'o%' OR lower(city) LIKE 'u%';
--lower function is used to convert the CITY name to lowercase and then check if it starts with any vowel using the LIKE operator.