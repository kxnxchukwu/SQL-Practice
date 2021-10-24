/* Math Functions */

/* CEIL & FLOOR */

/* 
CEIL function returns the smallest integer value that is greater than or equal to a number
FLOOR function returns the largest integer value that is equal to or less than a number.
*/

SELECT order_line, sales, CEIL(sales), FLOOR(sales) FROM sales WHERE discount>0;

/* RANDOM */

/*
RANDOM function can be used to return a random number between 0 and 1.
*/

/* Random decimal between a range (a included and b excluded) */

SELECT RANDOM()*(b-a)+a

/* Random Integer between a range (both boundaries included) */

SELECT FLOOR(RANDOM()*(b-a+1))+a;

/* SETSEED */

/* 
When the setseed function is used the random function will return a repeatable sequence of random numbers that is derived from the seed.
*/

SELECT SETSEED(0.5);
SELECT RANDOM();
SELECT RANDOM();

/* ROUND */

/*
ROUND function returns a number rounded to a certain number of decimal places
*/

SELECT order_line, sales, ROUND(sales) FROM sales;

/* POWER */

/*
POWER function returns m raised to the nth power. POWER (m,n).
*/

SELECT POWER(6, 2);

SELECT age, power(age,2) FROM customer ORDER BY age;