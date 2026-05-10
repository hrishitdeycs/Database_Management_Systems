-- create user
CREATE USER IF NOT EXISTS 'demo'@'localhost'
IDENTIFIED BY 'StrongPassword!123'
PASSWORD EXPIRE INTERVAL 90 DAY
PASSWORD HISTORY 5
PASSWORD REUSE INTERVAL 365 DAY;
SHOW CREATE USER 'demo'@'localhost';
-- create role
CREATE ROLE invoice_entry;
SELECT user, host
FROM mysql.user
WHERE user='invoice_entry';
-- grant privileges to a role
GRANT INSERT, UPDATE
ON EMPLOYEE
TO 'invoice_entry';
SHOW GRANTS FOR 'invoice_entry';
-- revoke privileges from a role
REVOKE INSERT, UPDATE
ON EMPLOYEE
TO 'invoice_entry';
SHOW GRANTS FOR 'invoice_entry';
-- create index
CREATE INDEX idx_lname_dno
ON EMPLOYEE(Lname, Dno);
SHOW INDEX FROM EMPLOYEE;
-- remove user
DROP USER 'demo'@'localhost';
SHOW CREATE USER 'demo'@'localhost';
-- remove role
DROP ROLE 'invoice_entry';
SELECT user, host
FROM mysql.user
WHERE user='invoice_entry';
-- remove index
DROP INDEX idx_lname_dno ON EMPLOYEE;
SHOW INDEX FROM EMPLOYEE;
