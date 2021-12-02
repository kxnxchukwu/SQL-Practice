/* DateTime Functions */

/* Current Date and Time */

/* The CURRENT_DATE function will return the current date as a 'YYYY MM DD' format. */

SELECT CURRENT_DATE;

/* The CURRENT_TIME function will return the current time of day as a 'HH:MM:SS.GMT+TZ' */

SELECT CURRENT_TIME;
SELECT CURRENT_TIME(1);

/* The CURRENT_TIMESTAMP function will return the current date as a 'YYYY MM DD HH:MM:SS.GMT+TZ' */

SELECT CURRENT_TIMESTAMP;

/* AGE function */

/* The AGE function returns the number of years, months, and days between two dates. */

/* Syntax: age(date1, date2) If date1 is NOT provided, current date will be used */

SELECT age('2014 04 25', '2014 01 01')

SELECT order_line, order_date, ship_date, age(ship_date, order_date) as time_taken FROM sales ORDER BY time_taken DESC;

/* EXTRACT function */

/* The EXTRACT function extracts parts from a date. */

/* Syntax: EXTRACT ('unit' from 'date') */

SELECT EXTRACT(day from '2014 04 25');

SELECT EXTRACT(day from '2014 04 25 08:44:21');

SELECT EXTRACT(minute from '08:44:21');

SELECT order_line, EXTRACT(EPOCH FROM (ship_date -order_date)) FROM sales;