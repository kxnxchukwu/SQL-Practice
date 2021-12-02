/* Conversion Functions */

/* TO_CHAR */

/* TO_CHAR function converts a number or date to a string */

/* Syntax: TO_CHAR(value, format_mask) */

SELECT sales, TO_CHAR(sales, '9999.99') FROM sales;

SELECT sales, TO_CHAR(sales, 'L9,999.99') FROM sales;

SELECT order_date, TO_CHAR(order_date, 'MMDDYY') FROM sales;

SELECT order_date, TO_CHAR(order_date, 'Month DD, YYYY') FROM sales;

/* TO_DATE */

/* TO_DATE function converts a string to a date. */

/* Syntax: TO_DATE(string1, format_mask) */

SELECT TO_DATE('2014/04/25', 'YYYY/MM/DD');

SELECT TO_DATE('033114', 'MMDDYY');

/* TO_NUMBER */

/* TO_NUMBER function converts a string to a number. */

/* Syntax: TO_NUMBER(string1, format_mask) */

SELECT TO_NUMBER ('1210.73', '9999.99');

SELECT TO_NUMBER ('$1,210.73', 'L9,999.99');