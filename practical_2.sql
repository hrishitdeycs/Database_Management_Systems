-- create user
CREATE USER IF NOT EXISTS 'demo'@'localhost'
IDENTIFIED BY 'StrongPassword!123'
PASSWORD EXPIRE INTERVAL 90 DAY -- Forces the password to expire after 90 days.
PASSWORD HISTORY 5 -- The user cannot reuse any of those 5 previous passwords when changing it.
PASSWORD REUSE INTERVAL 365 DAY; -- Prevents reusing any password that was used in the last 365 days.
SHOW CREATE USER 'demo'@'localhost'; -- Displays the exact SQL statement MySQL used internally to create the user.
-- create role
CREATE ROLE 'invoice_entry'; -- A role is like a container for permissions.
SELECT user, host 
FROM mysql.user -- an internal MySQL table that stores account information for all database users.
WHERE user='invoice_entry';
-- grant privileges to a role
GRANT INSERT, UPDATE
ON EMPLOYEE
TO 'invoice_entry';
SHOW GRANTS FOR 'invoice_entry';
-- revoke privileges from a role
REVOKE INSERT, UPDATE
ON EMPLOYEE
FROM 'invoice_entry';
SHOW GRANTS FOR 'invoice_entry'; -- displays the permissions (privileges) assigned to invoice_entry
-- create index
CREATE INDEX idx_lname_dno -- An index is like a lookup structure (similar to an index in a book) that speeds up searching.
ON EMPLOYEE(Lname, Dno);
SHOW INDEX FROM EMPLOYEE; -- displays all indexes on the EMPLOYEE table.
-- remove role
DROP ROLE 'invoice_entry';
SELECT user, host
FROM mysql.user
WHERE user='invoice_entry';
-- remove user
DROP USER 'demo'@'localhost';
SHOW CREATE USER 'demo'@'localhost';
-- remove index
DROP INDEX idx_lname_dno ON EMPLOYEE;
SHOW INDEX FROM EMPLOYEE;
