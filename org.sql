CREATE DATABASE SQL_PLACEMENTS;
USE SQL_PLACEMENTS;

create table workers(
WORKER_ID INT  PRIMARY KEY AUTO_INCREMENT, --  no need to write NOT NULL since primary key does not allow null values.
FIRST_NAME VARCHAR(25),
LAST_NAME VARCHAR(25),
SALARY INT,
JOINING_DATE DATETIME,
DEPARTMENT CHAR(10)
);

INSERT INTO workers (FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT) VALUES
('Yash','Redddy','50000','08-07-25 16:55:00','HR'),
('Rohan','Sharma','60000','08-07-25 16:56:00','IT'),
('Aditi','Verma','70000','08-07-25 16:57:00','Finance'),
('Priya','Singh','80000','08-07-25 16:58:00','Marketing'),
('Rahul','Kumar','90000','08-07-25 16:59:00','Sales'),
('Anjali','Gupta','100000','08-07-25 17:00:00','Operations'),
('Vikram','Patel','110000','08-07-25 17:01:00','Support'),
('Sneha','Iyer','120000','08-07-25 17:02:00','HR'),
('Karan','Mehta','130000','08-07-25 17:03:00','IT'),
('Neha','Chopra','140000','08-07-25 17:04:00','Sales');

--we can also insert data into specific columns, if we do not specify a column, it will take the default value or NULL if no default is set.
INSERT INTO workers(FIRST_NAME,SALARY,DEPARTMENT) VALUES
('Aditya',75000,'Press');

SELECT * FROM workers;

SELECT * FROM workers WHERE SALARY BETWEEN 100000 AND 140000;
-- This will return all workers with a salary between 100000 and 140000. limits inclusive.   

--DELETE FROM workers;
--delete,drop,truncate
--delete ,will delete all rows or selected rows based on condition, data gets deleted but table structure remains intact.
--u can still inset rows,write queries on the table.

-- DROP TABLE workers;
--drop, will delete the table structure and data both, you cannot use the table after this command.
--select * from workers; -- will give error, since table does not exist.

--TRUNCATE TABLE workers;
--truncate, will delete all rows from the table but the table structure remains intact unlike delete where you can delete selected rows.

CREATE TABLE Bonuses(
    WORKER_REF_ID INT AUTO_INCREMENT,
    BONUS_AMOUNT INT,
    BONUS_DATE DATETIME,
    FOREIGN KEY (WORKER_REF_ID) REFERENCES workers (WORKER_ID) ON DELETE CASCADE

);

--Referential constraints are used to maintain the integrity of the data in the database.
--FOREIGN KEY (WORKER_REF_ID) REFERENCES workers (WORKER_ID) means that WORKER_REF_ID in BONUSES table is a foreign key that references WORKER_ID in workers table.
--This means that the values in WORKER_REF_ID must match the values in WORKER_ID of the workers table.

--Insert constraints
--key value cannot be inserted in the foreign key column if it does not exist in the primary key column of the referenced table.
--For example, if you try to insert a bonus for a worker that does not exist in the workers table, it will throw an error.

--delete constraints
-- 

--ON DELETE CASCADE means if a particular worker row is deleted from the workers table, all the corresponding bonus records will also be deleted automatically.
--ON DELETE SET NULL means if a particular worker row is deleted from the workers table, the corresponding foreign key in the projects table will be set to NULL.
 

INSERT INTO BONUSES (BONUS_AMOUNT,BONUS_DATE) VALUES
(5000,'08-07-25 17:05:00'),
(6000,'08-07-25 17:06:00'),
(7000,'08-07-25 17:07:00'),
(8000,'08-07-25 17:08:00'),
(9000,'08-07-25 17:09:00'),
(10000,'08-07-25 17:10:00'),
(11000,'08-07-25 17:11:00'),
(12000,'08-07-25 17:12:00'),
(13000,'08-07-25 17:13:00'),
(14000,'08-07-25 17:14:00');


SELECT * FROM BONUSES;

--creating a third table with foreign key reference to workers table
CREATE TABLE PROJECTS(
    PROJECT_ID INT PRIMARY KEY AUTO_INCREMENT,
    PROJECT_NAME VARCHAR(25),
    WORKER_REF_ID INT,
    FOREIGN KEY (WORKER_REF_ID) REFERENCES workers (WORKER_ID) ON DELETE CASCADE
);

INSERT INTO PROJECTS (PROJECT_NAME, WORKER_REF_ID) VALUES
('Project Alpha', 1),
('Project Beta', 2),
('Project Gamma', 3),
('Project Delta', 4),
('Project Epsilon', 5),
('Project Zeta', 6),
('Project Eta', 7),
('Project Theta', 8),
('Project Iota', 9),
('Project Kappa', 10);

SELECT * FROM PROJECTS;





