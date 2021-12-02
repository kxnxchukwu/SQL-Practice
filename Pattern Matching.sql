/* Pattern Matching */ 

/* LIKE */

/* The PostgreSQL LIKE condition allows you to perform pattern matching using Wildcards. */

/*

% Allows you to match any string of any length (including zero length)
_ Allows you to match on a single character

*/

SELECT * FROM customer_table WHERE first_name LIKE 'Jo%';

SELECT * FROM customer_table WHERE first_name LIKE '%od%';

SELECT first_name, last_name FROM customer_table WHERE first_name LIKE 'Jas_n';

SELECT first_name, last_name FROM customer_table WHERE last_name NOT LIKE 'J%';

SELECT * FROM customer_table WHERE last_name LIKE 'G\%';

/* Reg-Ex Wildcards */

/*

| Denotes alternation (either of two alternatives).
* Denotes repetition of the previous item zero or more times
+ Denotes repetition of the previous item one or more times.
? Denotes repetition of the previous item zero or one time.
{m} denotes repetition of the previous item exactly m times.
{m,} denotes repetition of the previous item m or more times.
{m,n}
denotes repetition of the previous item at least m and not more
than n times
^,$ ^ denotes start of the string, $ denotes start of the string
[chars] a bracket expression, matching any one of the chars
~* ~ means case sensitive and ~* means case insensitive

*/

/* ~ OPERATOR */

SELECT * FROM customer WHERE customer_name ~* '^a+[a-z\s]+$';

SELECT * FROM customer WHERE customer_name ~* '^(a|b|c|d)+[a-z\s]+$';

SELECT * FROM customer WHERE customer_name ~* '^(a|b|c|d)[a-z]{3}\s[a-z]{4}$';

SELECT * FROM users WHERE name ~* '[a-z0-9\.\-\_]+@[a-z0-9\-]+\.[a-z]{2,5}';