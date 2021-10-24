/* String Functions */

/* Length */

/* 
LENGTH function returns the length of the specified string, expressed as the number of characters.
*/

SELECT Customer_name, LENGTH(Customer_name) as characters FROM customer WHERE age >30;

/* UPPER & LOWER */

/*
UPPER/LOWER function converts all characters in the specified string to uppercase/ lowercase.
*/

SELECT UPPER('Kenechukwu Ajufo');

SELECT LOWER('KENECHUKWU AJUFO');

/* REPLACE */

/* 
REPLACE function replaces all occurrences of a specified string
*/

SELECT Customer_name, country, REPLACE(country,'United States','US') AS country_new FROM customer;

/* TRIM, LTRIM & RTRIM */

/*
TRIM function removes all specified characters either from the beginning or the end of a string
*/

/*
RTRIM function removes all specified characters from the right hand side of a string
*/

/*
LTRIM function removes all specified characters from the left hand side of a string
*/

SELECT TRIM(leading ' ' from ' Kenechukwu Ajufo ');

SELECT TRIM(trailing ' ' from ' Kenechukwu Ajufo ');

SELECT TRIM(both ' ' from ' Kenechukwu Ajufo ');

SELECT TRIM(' Kenechukwu Ajufo ');

SELECT RTRIM(' Kenechukwu Ajufo ', ' ');

SELECT LTRIM (' Kenechukwu Ajufo ', ' ');

/* CONCAT */

/*
|| operator allows you to concatenate 2 or more strings together
*/

SELECT Customer_name, city|| ',' ||state|| ',' ||country AS address FROM customer;

/* SUBSTRING */

/*
SUBSTRING function allows you to extract a substring from a string
*/

SELECT Customer_id, Customer_name, SUBSTRING(Customer_id FOR 2) AS cust_group
FROM customer WHERE SUBSTRING(Customer_id FOR 2) = 'AB';

SELECT Customer_id, Customer_name, SUBSTRING(Customer_id FROM 4 FOR 5) AS cust_number
FROM customer WHERE SUBSTRING(Customer_id FOR 2) = 'AB';

/* STRING AGGREGATOR */

/* 
STRING_AGG concatenates input values into a string, separated by delimiter
*/

SELECT order_id STRING_AGG (product_id,',') FROM sales GROUP BY order_id;