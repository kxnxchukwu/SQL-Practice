/* Indexes and Views */

/* INDEXES */

/* 
An index is a performance tuning method of allowing faster retrieval of records. 
An index creates an entry for each value that appears in the indexed columns.
A simple index is an index on a single column, while a composite index is an index on two or more columns.
*/

/* CREATE INDEX */

CREATE INDEX mon_idx ON month_values (MM);

/* DROP INDEX */

DROP INDEX mon_idx

/* RENAME INDEX */

ALTER INDEX index_name RENAME TO new_index_name

/* VIEWS */

/* VIEW is not a physical table, it is a virtual table created by a query joining one or more tables. */

/* CREATE VIEW */

CREATE VIEW logistics AS SELECT a.order_line, a.order_id, b.customer_name, b.city, b.state, b.country FROM
sales AS a LEFT JOIN customer as b ON 
a.customer_id = b.customer_id ORDER BY a.order_line

/* CREATE OR REPLACE VIEW can be used instead of just CREATE VIEW */

/* DROP VIEW */

DROP VIEW logistics;

/* UPDATE VIEW */

UPDATE logistics SET Country = US WHERE Country = 'United States'