USE SQL_PLACEMENTS;

SELECT * FROM table_1;

--order by
--sorts the result set based on one or more columns, either in ascending or descending order.
SELECT * FROM workers ORDER BY SALARY DESC;
--can also sort alphabetically

SELECT * FROM table_1 ORDER BY EMAIL_ADDRESS ASC;
--but why did NULL value came first??
--because NULL values are considered less than any other value, so they appear first in ascending order.

SELECT * FROM table_1 ORDER BY EMAIL_ADDRESS DESC;

SELECT * FROM table_1 ORDER BY DEPARTMENT, FIRST_NAME;
--sorts first by DEPARTMENT in ascending order, if two queries have same department, then it sorts by FIRST_NAME in ascending order.
--if two queries have same DEPARTMENT and FIRST_NAME, then it sorts by ID_NUM in ascending order.

SELECT * FROM table_1 ORDER BY DEPARTMENT ASC,FIRST_NAME DESC;
--This will sort by DEPARTMENT in ascending order, and within each department, it will sort by FIRST_NAME in descending order.

