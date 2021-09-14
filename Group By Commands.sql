/* Group By Commands AND Conditional Statement */

/* GROUP BY */

/* GROUP BY clause is used in a SELECT statement to group the results by one or more columns. */

SELECT region, COUNT (customer_id) AS customer_count FROM customer GROUP BY region;

SELECT product_id, SUM (quantity) AS quantity_sold FROM sales GROUP BY product_id ORDER BY quantity_sold DESC;

SELECT customer_id, MIN(sales) AS min_sales, MAX(sales) AS max_sales, AVG(sales) AS Average_sales, SUM(sales) AS Total_sales
FROM sales GROUP BY customer_id ORDER BY total_sales DESC LIMIT 5;

/* HAVING */

/* HAVING clause is used in combination with the GROUP BY clause to restrict the groups of returned rows to only those
whose the condition is TRUE */

SELECT region, COUNT(customer_id) AS customer_count FROM customer GROUP BY region HAVING COUNT(customer_id) > 200;

/* CASE */

/* The CASE expression is a conditional expression, similar to if/else statements */

SELECT *, CASE WHEN age<30 THEN 'Young' WHEN age>60 THEN 'Senior Citizen' ELSE 'Middle aged' END AS Age_category FROM customer;