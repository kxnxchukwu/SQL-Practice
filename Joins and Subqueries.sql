/* JOINS and Subqueries */

/* INNER JOIN */

/* INNER JOIN compares each row of table1 with each row of table2 to find all pairs of rows which satisfy the joinpredicate. When satisfied, column values for each matched pair of rows of A and B are combined into a result row. */

SELECT a.order_line, a.product_id, a.customer_id, a.sales, b.customer_name, b.age
FROM sales_2015 AS a INNER JOIN customer_20_60 AS b
ON a.customer_id = b.customer_id ORDER BY customer_id;

/* LEFT JOIN */

/* The LEFT JOIN returns all rows from the left table, even if there are no matches in the right table. */

SELECT a.order_line , a.product_id, a.customer_id, a.sales, b.customer_name, b.age
FROM sales_2015 AS a LEFT JOIN customer_20_60 AS b
ON a.customer_id = b.customer_id ORDER BY customer_id;

/* RIGHT JOIN */

/* The RIGHT JOIN returns all rows from the right table, even if there are no matches in the left table. */

SELECT a.order_line , a.product_id, a.customer_id, a.sales, b.customer_name, b.age
FROM sales_2015 AS a RIGHT JOIN customer_20_60 AS b
ON a.customer_id = b.customer_id ORDER BY customer_id;

/* FULL OUTER JOIN */

/* The FULL JOIN combines the results of both left and right outer joins */

SELECT a.order_line , a.product_id, a.customer_id, a.sales, b.customer_name, b.age, b.customer_id
FROM sales_2015 AS a FULL JOIN customer_20_60 AS b 
ON a.customer_id = b.customer_id ORDER BY a.customer_id , b.customer_id;

/* CROSS JOIN */

/* The Cross Join creates a cartesian product between two sets of data. */

SELECT a.YYYY, b.MM FROM year_values AS a, month_values AS b ORDER BY a.YYYY, b.MM;

/* EXCEPT */

/* EXCEPT operator is used to return all rows in the first SELECT statement that are not returned by the second SELECT statement. */

SELECT customer_id FROM sales_2015 EXCEPT SELECT customer_id FROM customer_20_60 ORDER BY customer_id;

/* UNION */

/* UNION operator is used to combine the result sets of 2 or more SELECT statements. It removes duplicate rows between
the various SELECT statements. */

SELECT customer_id FROM sales_2015 UNION SELECT customer_id FROM customer_20_60 ORDER BY customer_id;

/* SUBQUERIES */

/* Subquery is a query within a query. These subqueries can reside in the WHERE clause, the FROM clause, or the SELECT
clause. */

/* Subquery in WHERE */

SELECT * FROM sales WHERE customer_ID IN (SELECT DISTINCT customer_id FROM customer WHERE age >60);

/* Subquery in FROM */

SELECT a.product_id , a.product_name , a.category, b.quantity
FROM product AS a LEFT JOIN (SELECT product_id, SUM(quantity) AS quantity
FROM sales GROUP BY product_id) AS b ON a.product_id = b.product_id ORDER BY b.quantity desc;

/* Subquery in SELECT */

SELECT customer_id, order_line, (SELECT customer_name FROM customer WHERE sales.customer_id = customer.customer_id) 
FROM sales ORDER BY customer_id;