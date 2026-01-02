--alter

USE SQL_PLACEMENTS;

--add column 
ALTER TABLE account_1
    ADD COLUMN account_type VARCHAR(25) NOT NULL DEFAULT 'savings';

--change data type of column
ALTER TABLE account_1 MODIFY COLUMN balance DOUBLE NOT NULL;

DESCRIBE account_1;--before it is INT, now it is DOUBLE.

--rename column
ALTER TABLE account_1 RENAME COLUMN account_type TO type_of_account;
--type_of_account data type is the same as account_type, which is VARCHAR(25).

--if u want to changge data type along with renaming then
--ALTER TABLE account_1 CHANGE COLUMN account_type type_of_account VARCHAR(50) NOT NULL DEFAULT 'savings';

--drop column
ALTER TABLE account_1 DROP COLUMN type_of_account;

DESCRIBE account_1;-- after dropping the column, it is no longer present.


SELECT * FROM account_1;



