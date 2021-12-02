/* Access Control */

/* CREATE USER */

/* CREATE USER statement creates a database account that allows you to log into the database. */

/* Syntax: CREATE USER user_name [WITH PASSWORD 'password_value' | VALID UNTIL 'expiration' */

CREATE USER kenechukwu WITH PASSWORD 'love';

CREATE USER kenechukwu WITH PASSWORD 'love' VALID UNTIL 'Jan 1, 2022';

CREATE USER kenechukwu WITH PASSWORD 'love' VALID UNTIL 'infinity';

/* GRANT & REVOKE */

/* Privileges to tables can controlled using GRANT & REVOKE. These permissions can be any combination of SELECT, 
INSERT, UPDATE, DELETE, INDEX, CREATE, ALTER, DROP, GRANT OPTION or ALL. */

/* Syntax: 
GRANT privileges ON object TO user;

REVOKE privileges ON object FROM user;
*/

GRANT SELECT, INSERT, UPDATE, DELETE ON products TO kenechukwu;

GRANT ALL ON products TO kenechukwu;

GRANT SELECT ON products TO PUBLIC;

REVOKE ALL ON products FROM kenechukwu;

/*

Privilege: Description

SELECT: Ability to perform SELECT statements on the table.

INSERT: Ability to perform INSERT statements on the table.

UPDATE: Ability to perform UPDATE statements on the table.

DELETE: Ability to perform DELETE statements on the table.

TRUNCATE: Ability to perform TRUNCATE statements on the table.

REFERENCES: Ability to create foreign keys (requires privileges on both
parent and child tables).

TRIGGER: Ability to create triggers on the table.

CREATE: Ability to perform CREATE TABLE statements.

ALL: Grants all permissions.

*/

/* DROP USER */

/* DROP USER statement is used to remove a user from the database. */

/* Syntax: DROP USER user_name;

If the user that you wish to delete owns a database, be sure to drop the database first and then drop the user. 

*/

DROP USER kenechukwu;

/* RENAME USER */

/* ALTER USER statement is used to rename a user in the database. */

/* Syntax: ALTER USER user_name RENAME TO new_name */

ALTER USER kenechukwu RENAME TO kene;


/* FIND ALL USERS */

/* Run a query against pg_user table to retrieve information about Users */

SELECT usename FROM pg_user;

/* FIND LOGGED IN USERS */

/* Run a query against pg_stat_activity table to retrieve information about Logged in Users */

SELECT DISTINCT usename FROM pg_stat_activity