Write query to see the list of databases-
SHOW DATABASES;

Create a database with name sb_101_block_23
CREATE DATABASE sb_101_block_23;
Query OK, 1 row affected (0.01 sec)

Write query to use the database sb_101_block_23
USE sb_101_block_23;
Database changed

Write query to create a table student with following structure
field       data-type    Description
rollNo	    int(8)       PRIMARY KEY
name	      varchar(20)  NOT NULL
email	      varchar(20)  UNIQUE
x_per       double(5,2)  Default valie 33.0
state       varchar(25)  

CREATE TABLE student(
	rollNo int(8) PRIMARY KEY,
	name VARCHAR(20) NOT NULL,
	email VARCHAR(20) UNIQUE,
	x_per DOUBLE(5,2) DEFAULT 33.0,
	state VARCHAR(25)
);
Query OK, 0 rows affected (0.01 sec)

Write Query to see the list of tables
SHOW TABLES;
+---------------------------+
| Tables_in_sb_101_block_23 |
+---------------------------+
| student                   |
+---------------------------+

Write Query to see the structure of table student
DESC student;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| rollNo | int(8)      | NO   | PRI | NULL    |       |
| name   | varchar(20) | NO   |     | NULL    |       |
| email  | varchar(20) | YES  | UNI | NULL    |       |
| x_per  | double(5,2) | YES  |     | 33.00   |       |
| state  | varchar(25) | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
5 rows in set (0.01 sec)

Write Query to add following record in the table student
1, 'ABC', 'abc@ms.com', 75.42, 'Karnataka'
2, 'BCD', 'bcd@ms.com', 33.00, 'Rajasthan'

INSERT INTO student
VALUES (1, 'ABC', 'abc@ms.com', 75.42, 'Karnataka');
Query OK, 1 row affected (0.00 sec)

INSERT INTO student
(rollNo, name, email, state)
VALUES
(2, 'BCD', 'bcd@ms.com', 'Rajasthan');
Query OK, 1 row affected (0.00 sec)

Write Query to view records of the table student
SELECT * FROM student;
+--------+------+------------+-------+-----------+
| rollNo | name | email      | x_per | state     |
+--------+------+------------+-------+-----------+
|      1 | ABC  | abc@ms.com | 75.42 | Karnataka |
|      2 | BCD  | bcd@ms.com | 33.00 | Rajasthan |
+--------+------+------------+-------+-----------+

Now try to add following record in the table student & observe the output (or error message)
1, 'BCD', 'bcd@ms.com', 85.42, 'Tamilnadu'
3, null, ' cde@ms.com', 66.24, 'Haryana'
3, 'CDE', 'abc@ms.com', 65.24, 'Rajasthan'

INSERT INTO student
VALUES (1, 'BCD', 'bcd@ms.com', 85.42, 'Tamilnadu');
ERROR: 1062 (23000): Duplicate entry '1' for key 'PRIMARY'

INSERT INTO student
VALUES (3, null, ' cde@ms.com', 66.24, 'Haryana');
ERROR: 1048 (23000): Column 'name' cannot be null

INSERT INTO student
VALUES (3, 'CDE', 'abc@ms.com', 65.24, 'Rajasthan');
ERROR: 1062 (23000): Duplicate entry 'abc@ms.com' for key 'email'

Write Query to add new column dob with data type date
ALTER TABLE student ADD dob date;
Query OK, 2 rows affected (0.02 sec)
Records: 2  Duplicates: 0  Warnings: 0

Write Query to see the structure of table student (just to observe the change)
DESCRIBE student;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| rollNo | int(8)      | NO   | PRI | NULL    |       |
| name   | varchar(20) | NO   |     | NULL    |       |
| email  | varchar(20) | YES  | UNI | NULL    |       |
| x_per  | double(5,2) | YES  |     | 33.00   |       |
| state  | varchar(25) | YES  |     | NULL    |       |
| dob    | date        | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+

Write Query to change the size of email_id to 50 from 20
ALTER TABLE student MODIFY email varchar(50);
Query OK, 2 rows affected (0.02 sec)
Records: 2  Duplicates: 0  Warnings: 0

Write Query to change the name of column from dob to birth_date
ALTER TABLE student CHANGE dob birth_date date;
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

Write Query to see the structure of table student (just to observe the change)
DESCRIBE student;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| rollNo     | int(8)      | NO   | PRI | NULL    |       |
| name       | varchar(20) | NO   |     | NULL    |       |
| email      | varchar(50) | YES  | UNI | NULL    |       |
| x_per      | double(5,2) | YES  |     | 33.00   |       |
| state      | varchar(25) | YES  |     | NULL    |       |
| birth_date | date        | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+

Write Query to change the table name from student to st
ALTER TABLE student RENAME TO st;
Query OK, 0 rows affected (0.01 sec)

Write Query to see the list of tables
SHOW TABLES;
+---------------------------+
| Tables_in_sb_101_block_23 |
+---------------------------+
| st                        |
+---------------------------+

Write Query to drop the column birth_date from table st
ALTER TABLE st DROP birth_date;
Query OK, 2 rows affected (0.03 sec)
Records: 2  Duplicates: 0  Warnings: 0

Write Query to see the structure of table student (just to observe the change)
DESCRIBE st;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| rollNo | int(8)      | NO   | PRI | NULL    |       |
| name   | varchar(20) | NO   |     | NULL    |       |
| email  | varchar(50) | YES  | UNI | NULL    |       |
| x_per  | double(5,2) | YES  |     | 33.00   |       |
| state  | varchar(25) | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+

Write Query to drop primary key
ALTER TABLE st DROP PRIMARY KEY;
Query OK, 2 rows affected (0.02 sec)
Records: 2  Duplicates: 0  Warnings: 0

Write Query to drop NOT NULL from column name
ALTER TABLE st MODIFY name VARCHAR(20) NULL;
Query OK, 2 rows affected (0.02 sec)
Records: 2  Duplicates: 0  Warnings: 0

Write Query to unique constraint from column email
SHOW CREATE TABLE st;
| st    | CREATE TABLE `st` (
            `rollNo` int(8) NOT NULL,
            `name` varchar(20) DEFAULT NULL,
            `email` varchar(50) DEFAULT NULL,
            `x_per` double(5,2) DEFAULT '33.00',
            `state` varchar(25) DEFAULT NULL,
            UNIQUE KEY `email` (`email`)
          )

ALTER TABLE st DROP INDEX email;
Query OK, 2 rows affected (0.03 sec)
Records: 2  Duplicates: 0  Warnings: 0

Write Query to drop default from column x_per
ALTER TABLE st ALTER x_per DROP DEFAULT;
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

Write Query to see the structure of table student (just to observe the change)
DESCRIBE st;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| rollNo | int(8)      | NO   |     | NULL    |       |
| name   | varchar(20) | YES  |     | NULL    |       |
| email  | varchar(50) | YES  |     | NULL    |       |
| x_per  | double(5,2) | YES  |     | NULL    |       |
| state  | varchar(25) | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+

Write Query to make the rollNo column as primary key
ALTER TABLE st ADD PRIMARY KEY(rollNo);
Query OK, 2 rows affected (0.03 sec)
Records: 2  Duplicates: 0  Warnings: 0

Write Query to apply not null on column 'name'
ALTER TABLE st MODIFY name varchar(20) NOT NULL;
Query OK, 2 rows affected (0.02 sec)
Records: 2  Duplicates: 0  Warnings: 0

Write Query to apply unique constraint on column email
ALTER TABLE st MODIFY email varchar(50) UNIQUE;
Query OK, 2 rows affected (0.02 sec)
Records: 2  Duplicates: 0  Warnings: 0

Write query to apply default value 33.00 for column x_per
ALTER TABLE st ALTER x_per SET DEFAULT 33.00;
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

Write Query to see the structure of table student (just to observe the change)
DESCRIBE st;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| rollNo | int(8)      | NO   | PRI | NULL    |       |
| name   | varchar(20) | NO   |     | NULL    |       |
| email  | varchar(50) | YES  | UNI | NULL    |       |
| x_per  | double(5,2) | YES  |     | 33.00   |       |
| state  | varchar(25) | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+

Write Query to see all records of table st
SELECT * FROM st;
+--------+------+------------+-------+-----------+
| rollNo | name | email      | x_per | state     |
+--------+------+------------+-------+-----------+
|      1 | ABC  | abc@ms.com | 75.42 | Karnataka |
|      2 | BCD  | bcd@ms.com | 33.00 | Rajasthan |
+--------+------+------------+-------+-----------+

Add following records in the table st
3, CDE , cde@ms.com, 75.24, Maharashtra
4, def , def@ms.com, 72.69, West Bengal
5, efg , efg@ms.com, 33.00, Odisha
6, fgh , fgh@ms.com, 33.00, Delhi
7, ghi , ghi@ms.com, 33.00, Punjab
8, ijk , ijk@ms.com, 77.36, Haryana
9, jkl , jkl@ms.com, 85.55, Rajasthan
10, AED , NULL, 56.00, Karnataka

INSERT INTO st VALUES (3, 'CDE', 'cde@ms.com', 75.24, 'Maharashtra');
Query OK, 1 row affected (0.00 sec)

INSERT INTO st (name, rollNo, x_per, email, state) VALUES ('def', 4, 72.69, 'def@ms.com', 'West Bengal');
Query OK, 1 row affected (0.00 sec)

INSERT INTO st (rollNo, name, email, state) VALUES (5, 'efg', 'efg@ms.com', 'Odisha');
Query OK, 1 row affected (0.00 sec)

INSERT INTO st (rollNo, name, email, state) VALUES (6, 'fgh', 'fgh@ms.com', 'Delhi'), (7, 'ghi',  'ghi@ms.com', 'Punjab');
Query OK, 2 rows affected (0.00 sec)
Records: 2  Duplicates: 0  Warnings: 0

INSERT INTO st VALUES (8, 'ijk', 'ijk@ms.com', 77.36, 'Haryana'), (9, 'jkl',  'jkl@ms.com', 85.55, 'Rajasthan'), (10, 'AED', NULL, 56.00, 'Karnataka');
Query OK, 3 rows affected (0.00 sec)
Records: 3  Duplicates: 0  Warnings: 0

SELECT * FROM st;
+--------+------+------------+-------+-------------+
| rollNo | name | email      | x_per | state       |
+--------+------+------------+-------+-------------+
|      1 | ABC  | abc@ms.com | 75.42 | Karnataka   |
|      2 | BCD  | bcd@ms.com | 33.00 | Rajasthan   |
|      3 | CDE  | cde@ms.com | 75.24 | Maharashtra |
|      4 | def  | def@ms.com | 72.69 | West Bengal |
|      5 | efg  | efg@ms.com | 33.00 | Odisha      |
|      6 | fgh  | fgh@ms.com | 33.00 | Delhi       |
|      7 | ghi  | ghi@ms.com | 33.00 | Punjab      |
|      8 | ijk  | ijk@ms.com | 77.36 | Haryana     |
|      9 | jkl  | jkl@ms.com | 85.55 | Rajasthan   |
|     10 | AED  | NULL       | 56.00 | Karnataka   |
+--------+------+------------+-------+-------------+
