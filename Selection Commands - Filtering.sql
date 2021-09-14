/* Selection Commands: Filtering */

/* IN */

/* This condition is used to help reduce the need to use multiple OR conditions in a SELECT, INSERT, UPDATE, or DELETE statement. */

SELECT * FROM customer WHERE city IN ('Philadelphia', 'Seattle')

/* Without IN */

SELECT * FROM customer WHERE city = 'Philadelphia' OR city = 'Seattle';

/* BETWEEN */

/* The BETWEEN condition is used to retrieve values within a range in a SELECT, INSERT, UPDATE, or DELETE statement. */

SELECT * FROM customer WHERE age BETWEEN 20 AND 30;

/* Which is same as */

SELECT * FROM customer WHERE age >= 20 AND age <= 30;

SELECT * FROM customer WHERE age NOT BETWEEN 20 and 30;

SELECT * FROM sales WHERE ship_date BETWEEN '2015-04-01' AND '2016-04-01';

/* LIKE */

/* The PostgreSQL LIKE condition allows you to perform pattern matching using Wildcards. */

SELECT * FROM customer_table WHERE first_name LIKE 'Jo%';

SELECT * FROM customer_table WHERE first_name LIKE '%od%';

SELECT first_name, last_name FROM customer_table WHERE first_name LIKE 'Jas_n';

SELECT first_name, last_name FROM customer_table WHERE last_name NOT LIKE 'J%';

SELECT * FROM customer_table WHERE last_name LIKE 'G\%';