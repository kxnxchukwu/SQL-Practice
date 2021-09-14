/* Selection Commands: Ordering AND Alias */

/* ORDER BY */

/* The ORDER BY clause is used to sort the records in result set. It can only be used in SELECT statements. */

SELECT * FROM customer WHERE state = 'California' ORDER BY Customer_name;

/* Same as */

SELECT * FROM customer WHERE state = 'California' ORDER BY Customer_name ASC;

SELECT * FROM customer ORDER BY 2 DESC;

SELECT * FROM customer WHERE age>25 ORDER BY City ASC, Customer_name DESC;

SELECT * FROM customer ORDER BY age;

/* LIMIT */

/* LIMIT statement is used to limit the number of records returned based on a limit value */

SELECT * FROM customer WHERE age >= 25 ORDER BY age DESC LIMIT 8;

SELECT * FROM customer WHERE age >=25 ORDER BY age ASC LIMIT 10;

/* AS */ 

/* The keyword AS is used to assign an alias to the column or a table. It is inserted between the column name and the
 column alias or between the table name and the table alias. */

SELECT Cust_id AS 'Serial Number', Customer_name as name, Age as Customer_age FROM Customer ;