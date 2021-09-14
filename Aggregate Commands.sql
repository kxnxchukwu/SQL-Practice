/* Aggregate Commands */

/* COUNT */

/* Count function returns the count (number) of an expression */

SELECT COUNT(*) FROM sales;

SELECT COUNT (order_line) as "Number of Products Ordered", COUNT (DISTINCT order_id) AS "Number of Orders" FROM sales WHERE customer_id = 'CG-12520';

/* SUM */

/* Sum function returns the summed value of an expression */

SELECT sum(Profit) AS "Total Profit" FROM sales;

SELECT sum(quantity) AS 'Total Quantity' FROM orders where product_id = 'FUR-TA-10000577';

/* AVERAGE */

/* AVG function returns the average value of an expression. */

SELECT avg(age) AS "Average Customer Age" FROM customer;

SELECT avg(sales * 0.10) AS "Average Commission Value" FROM sales;

/* MIN/MAX */

/* MIN/MAX function returns the minimum/maximum value of an expression. */

SELECT MIN(sales) AS Min_sales_June15 FROM sales WHERE order_date BETWEEN '2015-06-01' AND '2015-06-30';

SELECT MAX(sales) AS Min_sales_June15 FROM sales WHERE order_date BETWEEN '2015-06-01' AND '2015-06-30';