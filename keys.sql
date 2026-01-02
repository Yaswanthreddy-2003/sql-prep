--keys
--primary key
--onlu one primary key can be defined in a table.
--no null values allowed in primary key column.
--primary key can be a single column or a combination of multiple columns.
--primary key is used to uniquely identify each row in a table.

--foreign key
--foreign key is a column or a combination of columns that refers to the primary key of another table.
--foreign key can have null values, but if it has a value, it must match a value in the primary key column of the referenced table.
--foreign key is used to establish a relationship between two tables.

--unique key
--in unique key, every element in thee column must be unique.
--it can have atmost one null value.
--multiple unique keys can be defined in a table.

--check 
--check constraint is used to limit the values that can be inserted into a column.
--if the value does not satisfy the condition, it will not be inserted into the column.

USE SQL_PLACEMENTS;

CREATE TABLE account_1(
    id INT PRIMARY KEY,
    name VARCHAR(25) UNIQUE,
    balance INT CHECK(balance>1000),
    interest_rate INT NOT NULL DEFAULT 5

);

INSERT INTO account_1(id, name, balance) VALUES
(1, 'Alice', 2000),
(2, 'Bob', 3000),
(3, 'Cob', 5000);
-- This will fail because balance must be greater than 1000 due to the CHECK constraint.
--(2, 'Alice', 3000),-- This will fail because 'Alice' already exists in the name column, which is unique.
SELECT * FROM account_1;

DESCRIBE account_1;


--default
--default constraint is used to set a default value for a column when no value is specified during insertion.

--An attribute can be both a primary and a foreign key.
-- In this case, it will refer to the primary key of the same table or another table.
--only possible i the table has one to one  relationship with another table.

CREATE TABLE employee(
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(25)
)

CREATE TABLE employee_address(
    emp_id INT PRIMARY KEY,
    emp_address VARCHAR(50),
    FOREIGN KEY (emp_id) REFERENCES employee(emp_id) ON DELETE CASCADE
)



