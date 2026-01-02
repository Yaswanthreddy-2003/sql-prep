USE SQL_PLACEMENTS;

CREATE TABLE table_1(
    ID_NUM INT PRIMARY KEY AUTO_INCREMENT,
    FIRST_NAME VARCHAR(25),
    LAST_NAME VARCHAR(25),
    EMAIL VARCHAR(50),
    DEPARTMENT CHAR(10)
);

INSERT INTO table_1 (FIRST_NAME, LAST_NAME, EMAIL, DEPARTMENT) VALUES
('John','Doe','john.doe@example.com','HR'),
('Jane','Smith','jane.smith@example.com','IT'),
('Alice','Johnson','alice.johnson@example.com','Finance'),
('Bob','Brown','bob.brown@example.com','Marketing'),
('Charlie','Davis','charlie.davis@example.com','Sales'),
('David','Wilson','david.wilson@example.com','Operations'),
('Eva','Garcia','eva.garcia@example.com','Support'),
('Frank','Martinez','frank.martinez@example.com','HR'),
('Grace','Lopez','grace.lopez@example.com','IT'),
('Henry','Gonzalez','henry.gonzalez@example.com','Sales');

SELECT * FROM table_1;

--alter command 
--alter is used to modify the structure of an existing table, such as adding or dropping columns, changing data types, or modifying constraints.

ALTER TABLE table_1
    AUTO_INCREMENT = 100,--applies to new rows inserted after this command, it sets the next auto-increment value to 100.
    RENAME COLUMN EMAIL TO EMAIL_ADDRESS;

INSERT INTO table_1(FIRST_NAME,LAST_NAME,EMAIL_ADDRESS,DEPARTMENT)VALUES
('Bob','Mahesh','bob.mahesh@gmail.com','IT');


SELECT LAST_NAME,DEPARTMENT FROM table_1 WHERE ID_NUM=1;

SELECT 69 + 69; -- This will return 138, a simple arithmetic operation.
SELECT now(); -- This will return the current date and time.
SELECT lcase('HELLO WORLD');
SELECT ucase('hiroshima');

INSERT INTO table_1 (FIRST_NAME, LAST_NAME, EMAIL_ADDRESS, DEPARTMENT) VALUES
('John','Doe','john.doe@example.com','HR'),
('Jane','Smith','jane.smith@example.com','IT'),
('Alice','Johnson','alice.johnson@example.com','Finance');

SELECT * FROM table_1;

--SELECT DISTINCT
--returns unique values from a column, removing duplicates.

SELECT  DISTINCT DEPARTMENT FROM table_1;
SELECT DISTINCT LAST_NAME, DEPARTMENT FROM table_1;
-- This will return distinct combinations of last names and departments.
--even though some departments have the same last name, it will return distinct combinations.

--SELECT COUNT
--returns the number of rows that match a specified condition.
SELECT COUNT(*) FROM table_1; 
-- This will return the total number of rows in the table.

--inserting a null value
INSERT INTO table_1 (FIRST_NAME, LAST_NAME, EMAIL_ADDRESS, DEPARTMENT) VALUES
('New','User',NULL,'IT');

--total 15 rows in table_1 but only 14 rows with non-null email addresses.
SELECT COUNT(EMAIL_ADDRESS) FROM table_1;--returns only non-null email addresses.

SELECT COUNT(*) FROM table_1 WHERE DEPARTMENT='HR';

SELECT COUNT(DISTINCT DEPARTMENT) FROM table_1;-- This will return the number of distinct departments in the table.


