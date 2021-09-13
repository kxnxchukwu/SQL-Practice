/* Fundamental SQL Statements */

/* CREATE DATABASE */

CREATE DATABASE Classroom;

/* CREATE TABLE */

CREATE TABLE science_class (Enrollment_no INT, Name VARCHAR, Science_Marks INT);

/* INSERT INTO TABLE */

/* Single Row (without column names specified) */ 

INSERT INTO customer_table VALUES (1, 'bee', 'cee', 32, 'bc@xyz.com');

/* Single Row (with column names specified) */ 

INSERT INTO customer_table (cust_id, first_name, age, email_id) VALUES (2, 'dee', 22, 'd@xyz.com');

/* Multiple Rows */

INSERT INTO customer_table VALUES (1, 'ee', 'ef', 35, 'ef@xyz.com'),
(1, 'gee', 'eh', 42, 'gh@xyz.com'),
(1, 'eye', 'jay', 62, 'ij@xyz.com'),
(1, 'kay', 'el', , 'el@xyz.com');


/* The Basic Syntax to import data from CSV file into a table using COPY statement */

COPY persons(first_name, last_name, dob, email) FROM 'C:\sampledb\persons.csv' DELIMITER ',' CSV HEADER;

COPY sample_table_name FROM 'C:\sampledb\sample_data.csv'  DELIMITER ',' CSV HEADER;

/* SELECT */

/* SELECT ONE COLUMN */

SELECT first_name FROM customer_table;

/* SELECT Multiple Columns */

SELECT first_name, last_name FROM customer_table;

/* SELECT All Columns */

SELECT * FROM customer_table;

/* SELECT DISTINCT */

/* SELECT ONE COLUMN */

SELECT DISTINCT customer_name FROM customer_table;

/* SELECT Multiple Columns */

SELECT DISTINCT customer_name, age FROM customer_table;

/* WHERE */

/* Equals to condition */

SELECT first_name FROM customer_table WHERE age = 25;

/* Less than/Greater than condition */ 

SELECT first_name, age FROM customer_table WHERE age>25;

SELECT first_name, age FROM customer_table WHERE age<25;

/* Matching text condition */

SELECT * FROM customer_table WHERE first_name = “John”;

/* LOGICAL OPERATORS */

/* AND */

SELECT first_name, last_name, age FROM customer_table WHERE age>20 AND age<30;

/* OR */

SELECT first_name, last_name, age FROM customer_table WHERE age<20 OR age>30 OR first_name = ‘John’;

/* NOT */

SELECT first_name, last_name, age FROM employee WHERE NOT age=25

SELECT first_name, last_name, age FROM employee WHERE NOT age=25 AND NOT first_name = ‘JAY’;

/* UPDATE */

/* Single Row (with column names specified) */

UPDATE Customer_table SET Age = 17, Last_name = 'Pe' WHERE Cust_id = 2;

/* Multiple Rows */

UPDATE Customer_table SET email_id = 'gee@xyz.com' WHERE First_name = 'Gee' OR First_name = 'gee';

/* DELETE */

/* Single Row */

DELETE FROM CUSTOMERS WHERE ID = 6;

/* Multiple Rows */

DELETE FROM CUSTOMERS WHERE age>25;

/* All Rows */

DELETE FROM CUSTOMERS;

/* ALTER */

/* ALTER TABLE COMMAND to ADD or DROP a Column in an existing table */

ALTER TABLE "table_name" ADD "column_name" "Data Type";

ALTER TABLE "table_name" DROP "column_name";

/* ALTER TABLE COMMAND to MODIFY or RENAME a Column in an existing table */

ALTER TABLE "table_name" ALTER COLUMN "column_name" TYPE "New Data Type";

ALTER TABLE "table_name" RENAME COLUMN "column 1" TO "column 2";

/* ALTER TABLE COMMAND to ADD or DROP a Constraint in a existing table */

ALTER TABLE 'table_name' ALTER COLUMN 'column_name' SET NOT NULL;

ALTER TABLE 'table_name' ALTER COLUMN 'column_name' DROP NOT NULL;

ALTER TABLE "table_name" ADD CONSTRAINT 'column_name' CHECK ('column_name'>=100);

ALTER TABLE "table_name" ADD PRIMARY KEY ('column_name');

ALTER TABLE 'child_table' ADD CONSTRAINT 'child_column' FOREIGN KEY ('parent column') REFERENCES 'parent table';