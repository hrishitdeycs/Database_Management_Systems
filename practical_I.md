<img width="671" height="480" alt="image" src="https://github.com/user-attachments/assets/2dd99407-fea6-4514-8c7d-291bb6d605e3" />
Here Rollno (ENROLLMENT) and SID (ENROLLMENT) are foreign keys.
SHOW DATABASES; lets us see which databases exist on the server.
<img width="331" height="150" alt="image" src="https://github.com/user-attachments/assets/ad3e6bfa-bd4a-4f52-b621-7d014c57707b" />
<img width="940" height="423" alt="image" src="https://github.com/user-attachments/assets/83724359-020b-4243-a95c-a1551fb1b7d4" />
CREATE DATABASE database_name;
It creates a new database on the MySQL server with the name we specify
<img width="458" height="138" alt="image" src="https://github.com/user-attachments/assets/649a44a8-f289-44b9-8dfd-3c7204695e21" />
<img width="940" height="474" alt="image" src="https://github.com/user-attachments/assets/0d323bb9-eb77-4415-9606-be20adffae5e" />
USE database_name;
Selects a specific database to work with.
SHOW TABLES;
Lists all tables in the currently selected database.
<img width="334" height="116" alt="image" src="https://github.com/user-attachments/assets/3f8e27b1-9f71-4e36-b911-35eca1046873" />
<img width="940" height="521" alt="image" src="https://github.com/user-attachments/assets/a09fede0-0fb6-4d05-9add-29192bc1e8a9" />
CREATE TABLE table_name (
    column1 datatype [constraints],
    column2 datatype [constraints],
    ...
);
The CREATE TABLE command is used to create a new table in a database. A table is a structured collection of data organized into rows and columns, and CREATE TABLE defines both the structure and optionally some constraints (like primary keys, foreign keys, default values, etc.).
<img width="625" height="325" alt="image" src="https://github.com/user-attachments/assets/4e33101c-280d-4b60-865e-1f69589720e6" />
<img width="940" height="400" alt="image" src="https://github.com/user-attachments/assets/c1b67ac3-514b-4bd4-9b5a-8d09b51bcc1f" />
<img width="595" height="316" alt="image" src="https://github.com/user-attachments/assets/018cd419-d1a6-4ca2-8f02-3e8450868f73" />
<img width="940" height="443" alt="image" src="https://github.com/user-attachments/assets/c9920792-e076-4693-89a3-25c655fcf171" />
<img width="694" height="373" alt="image" src="https://github.com/user-attachments/assets/5ef8af29-d832-4254-b52d-b637405a2655" />
<img width="940" height="505" alt="image" src="https://github.com/user-attachments/assets/c47c1bac-2616-472b-9833-8130e137557c" />
The DESC command (short for DESCRIBE) is used to view the structure of a table. It shows all columns, their data types, whether they can be NULL, key information, default values, and any extra details.
<img width="288" height="148" alt="image" src="https://github.com/user-attachments/assets/bcb445ff-8ea3-4814-a12d-a3003fab1285" />
<img width="940" height="484" alt="image" src="https://github.com/user-attachments/assets/72aca404-abff-4c03-b079-0903686f9cb7" />
<img width="294" height="156" alt="image" src="https://github.com/user-attachments/assets/917693c0-a445-4838-8006-eed1723e379c" />
<img width="940" height="476" alt="image" src="https://github.com/user-attachments/assets/6be976cb-34b7-406c-a8aa-8b9a4bb24a9f" />
<img width="384" height="173" alt="image" src="https://github.com/user-attachments/assets/89ccd2ba-1b60-47ef-9cc6-e01d1d29ae91" />
<img width="940" height="470" alt="image" src="https://github.com/user-attachments/assets/eec01180-2f01-4804-9b49-2b55d2ed93d8" />
<img width="811" height="253" alt="image" src="https://github.com/user-attachments/assets/577cfaa0-7fb4-49af-9db6-c96d7d623a99" />
<img width="940" height="380" alt="image" src="https://github.com/user-attachments/assets/f948626c-e530-452a-8892-a14996536344" />
<img width="853" height="255" alt="image" src="https://github.com/user-attachments/assets/61b73037-e00f-42fe-b392-699c8df9a19a" />
<img width="940" height="372" alt="image" src="https://github.com/user-attachments/assets/d856f3dd-6dee-4365-9266-cc4b6f62ca71" />
<img width="799" height="258" alt="image" src="https://github.com/user-attachments/assets/96fa86df-78e6-46cc-8e86-377362e787f6" />
<img width="940" height="381" alt="image" src="https://github.com/user-attachments/assets/9dfc07c8-9e15-4566-ba0e-61897564f0ea" />
The INSERT statement is used to add new rows (records) into a table.
Syntax:
INSERT INTO table_name (column1, column2, ...)
VALUES (value1, value2, ...);
•	table_name → the table we want to insert data into.
•	(column1, column2, ...) → the columns we are providing values for.
•	VALUES (value1, value2, ...) → the actual data to insert.
The SELECT statement is used to retrieve data from a table.
•	The * means “all columns.”
•	So SELECT * returns every column in the specified table.
Syntax:
SELECT * FROM table_name;


