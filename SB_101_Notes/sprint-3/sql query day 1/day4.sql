Subquery Starts here
Write query to view all records of table st
+--------+------+---------------+-------+------------------+
| rollNo | name | email         | x_per | state            |
+--------+------+---------------+-------+------------------+
|      1 | ABC  | abc@ms.com    | 77.42 | Karnataka        |
|      2 | BCD  | bcd@ms.com    | 33.00 | Rajasthan        |
|      3 | CDE  | cde@ms.com    | 77.24 | Maharashtra      |
|      4 | def  | def@ms.com    | 74.69 | West Bengal      |
|      5 | efg  | efg@ms.com    | 33.00 | Odisha           |
|      6 | fgh  | fgh@ms.com    | 33.00 | Delhi            |
|      7 | ghi  | ghi@ms.com    | 33.00 | Punjab           |
|      8 | ijk  | ijk@ms.com    | 79.36 | Haryana          |
|     10 | AED  | NULL          | 56.00 | Karnataka        |
+--------+------+---------------+-------+------------------+

You need to write query to find record of students whose percentage is more than the maximum percentage of all scholars from Karnataka
SELECT * FROM st
WHERE x_per > (SELECT MAX(x_per) FROM st
WHERE state = 'Karnataka');
+--------+------+---------------+-------+------------------+
| rollNo | name | email         | x_per | state            |
+--------+------+---------------+-------+------------------+
|      8 | ijk  | ijk@ms.com    | 79.36 | Haryana          |
+--------+------+---------------+-------+------------------+

Write query to display name, x_per, average percentage, difference of student's percentage to average percentage for all students

SELECT name, x_per, (SELECT AVG(x_per) FROM st) "AVG_PER", x_per - (SELECT AVG(x_per) FROM st) as "difference" FROM st;
+------+-------+-----------+------------+
| name | x_per | AVG_PER   | difference |
+------+-------+-----------+------------+
| ABC  | 77.42 | 57.607000 |  19.813000 |
| BCD  | 33.00 | 57.607000 | -24.607000 |
| CDE  | 77.24 | 57.607000 |  19.633000 |
| def  | 74.69 | 57.607000 |  17.083000 |
| efg  | 33.00 | 57.607000 | -24.607000 |
| fgh  | 33.00 | 57.607000 | -24.607000 |
| ghi  | 33.00 | 57.607000 | -24.607000 |
| ijk  | 79.36 | 57.607000 |  21.753000 |
| AED  | 56.00 | 57.607000 |  -1.607000 |
+------+-------+-----------+------------+

Write a query demonstatre subquery in FROM clause
SELECT max(x_per)
FROM (SELECT name, x_per, email FROM st WHERE email IS NOT NULL) T
+------------+
| max(x_per) |
+------------+
|      79.36 |
+------------+

SELECT max(10_per)
FROM (SELECT name, x_per as 10_per, email FROM st WHERE email IS NOT NULL) T
+------------+
| max(x_per) |
+------------+
|      79.36 |
+------------+

Write a query to find record of students whose percentage is maximum among all scholars
SELECT *
FROM st
WHERE x_per = (
	SELECT MAX(x_per) FROM st
);
+--------+------+---------------+-------+------------------+
| rollNo | name | email         | x_per | state            |
+--------+------+---------------+-------+------------------+
|      8 | ijk  | ijk@ms.com    | 79.36 | Haryana          |
+--------+------+---------------+-------+------------------+

Write a query to find state and average x_per for all state such that include only those states whose average x_per is more than that of Karnataka
SELECT state, AVG(x_per)
FROM st
GROUP BY state
HAVING AVG(x_per) > (
	SELECT AVG(x_per) FROM st WHERE state = 'Karnataka'
);
+------------------+------------+
| state            | AVG(x_per) |
+------------------+------------+
| Maharashtra      |  77.240000 |
| West Bengal      |  74.690000 |
| Haryana          |  79.360000 |
+------------------+------------+

Add a record to the 'product' table with following data
pro_id: 7, pro_name: snacks, MRP: 90.00 MFG_DATE: 2022-01-01 category_id: should be same as of category_id of Food Items
INSERT INTO product
VALUES
(7, 'snacks', 90.00, '2022-01-01', (SELECT cat_id FROM category WHERE cat_name = 'Food Items')
);

Add a record to the 'st' table with following data
rollNo: 11, name: PQR, email: pqr@gmail.com, state: Himachal Pradesh, x_per: maximum x_per of all students

INSERT INTO st
VALUES
(11, 'PQR', 'pqr@gmail.com', (SELECT max(x_per) FROM st S), 'Himachal Pradesh');

Write a query to find record of all scholars whose x_per is more than average x_per of all scholars
SELECT * FROM st
WHERE x_per > (SELECT AVG(x_per) FROM st);

Write a query to find record of all scholars whose x_per is not equal to the x_per from the scholars of Odisha
SELECT * FROM st
WHERE x_per NOT IN(
	SELECT x_per FROM st WHERE state = 'Odisha'
);
+--------+------+---------------+-------+------------------+
| rollNo | name | email         | x_per | state            |
+--------+------+---------------+-------+------------------+
|      1 | ABC  | abc@ms.com    | 77.42 | Karnataka        |
|      3 | CDE  | cde@ms.com    | 77.24 | Maharashtra      |
|      4 | def  | def@ms.com    | 74.69 | West Bengal      |
|      8 | ijk  | ijk@ms.com    | 79.36 | Haryana          |
|     11 | PQR  | pqr@gmail.com | 79.36 | Himachal Pradesh |
+--------+------+---------------+-------+------------------+

Write a query to find record of all scholars whose x_per is less than the x_per of any scholar of Karnataka
SELECT * FROM st
WHERE x_per < ANY(
	SELECT x_per FROM st WHERE state = 'Karnataka'
);

+--------+------+------------+-------+-------------+
| rollNo | name | email      | x_per | state       |
+--------+------+------------+-------+-------------+
|      2 | BCD  | bcd@ms.com | 33.00 | Rajasthan   |
|      3 | CDE  | cde@ms.com | 77.24 | Maharashtra |
|      4 | def  | def@ms.com | 74.69 | West Bengal |
|      5 | efg  | efg@ms.com | 33.00 | Odisha      |
|      6 | fgh  | fgh@ms.com | 33.00 | Delhi       |
|      7 | ghi  | ghi@ms.com | 33.00 | Punjab      |
|     10 | AED  | NULL       | 56.00 | Karnataka   |
+--------+------+------------+-------+-------------+

Write a query to find record of all scholars whose x_per is more than the x_per of any scholar of Karnataka
SELECT * FROM st
WHERE x_per > ANY(
	SELECT x_per FROM st WHERE state = 'Karnataka'
);
+--------+------+---------------+-------+------------------+
| rollNo | name | email         | x_per | state            |
+--------+------+---------------+-------+------------------+
|      1 | ABC  | abc@ms.com    | 77.42 | Karnataka        |
|      3 | CDE  | cde@ms.com    | 77.24 | Maharashtra      |
|      4 | def  | def@ms.com    | 74.69 | West Bengal      |
|      8 | ijk  | ijk@ms.com    | 79.36 | Haryana          |
|     11 | PQR  | pqr@gmail.com | 79.36 | Himachal Pradesh |
+--------+------+---------------+-------+------------------+

Write a query to find record of all scholars whose x_per is more than the x_per of all scholar of Karnataka
SELECT * FROM st
WHERE x_per > ALL(
	SELECT x_per FROM st WHERE state = 'Karnataka'
);
+--------+------+---------------+-------+------------------+
| rollNo | name | email         | x_per | state            |
+--------+------+---------------+-------+------------------+
|      8 | ijk  | ijk@ms.com    | 79.36 | Haryana          |
|     11 | PQR  | pqr@gmail.com | 79.36 | Himachal Pradesh |
+--------+------+---------------+-------+------------------+

Write a query to find record of all scholars whose x_per is less than the x_per of all scholar of Karnataka
SELECT * FROM st
WHERE x_per < ALL(
	SELECT x_per FROM st WHERE state = 'Karnataka'
);

+--------+------+------------+-------+-----------+
| rollNo | name | email      | x_per | state     |
+--------+------+------------+-------+-----------+
|      2 | BCD  | bcd@ms.com | 33.00 | Rajasthan |
|      5 | efg  | efg@ms.com | 33.00 | Odisha    |
|      6 | fgh  | fgh@ms.com | 33.00 | Delhi     |
|      7 | ghi  | ghi@ms.com | 33.00 | Punjab    |
+--------+------+------------+-------+-----------+

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Transaction Management
Let say we have a table named as account that have following structure
tid int(10) PRIMARY KEY
name VARCHAR(20) NOT NULL
amount int NOT NULL
email VARCHAR(50) NOT NULL

CREATE TABLE account(
	tid int(10) PRIMARY KEY,
	name VARCHAR(20) NOT NULL,
	amount int NOT NULL,
	email VARCHAR(50) NOT NULL
);

& make following entries
1, Dinesh, 4000, dinesh@ms.com
2, Jayesh, 4000, jayesh@ms.com

INSERT INTO account
VALUES
(1, 'Dinesh', 4000, 'dinesh@ms.com'),
(2, 'Jayesh', 4000, 'jayesh@ms.com');

Say we want to transfer INR 1000 from dinesh’s account to jayesh’s account. Make sure that transaction should be atomic. Write query for this.
START TRANSACTION;
UPDATE account SET amount = (amount - 1000) WHERE tid = 1;
UPDATE account SET amount = (amount + 1000) WHERE tid = 2;
COMMIT;

mysql> SELECT * FROM account;
+-----+--------+--------+---------------+
| tid | name   | amount | email         |
+-----+--------+--------+---------------+
|   1 | Dinesh |   3000 | dinesh@ms.com |
|   2 | Jayesh |   5000 | jayesh@ms.com |
+-----+--------+--------+---------------+

Say we want to transfer INR 500 from dinesh’s account to jayesh’s account. Use rollback to cancel transaction. Write query for this.
START TRANSACTION;
UPDATE account SET amount = (amount - 1000) WHERE tid = 1;
UPDATE account SET amount = (amount + 1000) WHERE tid = 2;
ROLLBACK;

mysql> SELECT * FROM account;
+-----+--------+--------+---------------+
| tid | name   | amount | email         |
+-----+--------+--------+---------------+
|   1 | Dinesh |   3000 | dinesh@ms.com |
|   2 | Jayesh |   5000 | jayesh@ms.com |
+-----+--------+--------+---------------+

Say we want to transfer INR 500 from dinesh’s account to jayesh’s account then INR 1000 again. Use rollback to cancel the transaction of 1000/- but transaction of 500/- should be commited. Write query for this.
START TRANSACTION;
UPDATE account SET amount = (amount - 500) WHERE tid = 1;
UPDATE account SET amount = (amount + 500) WHERE tid = 2;
SAVEPOINT S1;
UPDATE account SET amount = (amount - 1000) WHERE tid = 1;
UPDATE account SET amount = (amount + 1000) WHERE tid = 2;
ROLLBACK TO S1;
COMMIT;

mysql> SELECT * FROM account;
+-----+--------+--------+---------------+
| tid | name   | amount | email         |
+-----+--------+--------+---------------+
|   1 | Dinesh |   2500 | dinesh@ms.com |
|   2 | Jayesh |   5500 | jayesh@ms.com |
+-----+--------+--------+---------------+

Write query to demonstrate effect of off autocommit.
SET AUTOCOMMIT = 0;
INSERT INTO account (tid, name, amount, email) VALUES (3, 'karan',2000,'karan@ms.com');
ROLLBACK;

mysql> SELECT * FROM account;
+-----+--------+--------+---------------+
| tid | name   | amount | email         |
+-----+--------+--------+---------------+
|   1 | Dinesh |   2500 | dinesh@ms.com |
|   2 | Jayesh |   5500 | jayesh@ms.com |
+-----+--------+--------+---------------+

Write query to demonstrate effect of on autocommit.
SET AUTOCOMMIT = 1;
INSERT INTO account (tid, name, amount, email) VALUES (3, 'karan',2000,'karan@ms.com');
ROLLBACK;

mysql> SELECT * FROM account;
+-----+--------+--------+---------------+
| tid | name   | amount | email         |
+-----+--------+--------+---------------+
|   1 | Dinesh |   2500 | dinesh@ms.com |
|   2 | Jayesh |   5500 | jayesh@ms.com |
|   3 | Karan  |   2000 | karab@ms.com  |
+-----+--------+--------+---------------+

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Write query to show indexes of table st
SHOW INDEX FROM st;
+-------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+-------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| st    |          0 | PRIMARY  |            1 | rollNo      | A         |          10 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| st    |          0 | email    |            1 | email       | A         |          10 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
+-------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+

Write query to find number of records scanned by database to search scholar with AED
EXPLAIN SELECT * FROM st WHERE name = 'AED';
+----+-------------+-------+------------+------+---------------+------+---------+------+------+----------+-------------+
| id | select_type | table | partitions | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra       |
+----+-------------+-------+------------+------+---------------+------+---------+------+------+----------+-------------+
|  1 | SIMPLE      | st    | NULL       | ALL  | NULL          | NULL | NULL    | NULL |   10 |    10.00 | Using where |
+----+-------------+-------+------------+------+---------------+------+---------+------+------+----------+-------------+

Write query to create index on 'name' of table st;
CREATE INDEX ind_name ON st(name);
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

Repeat "Write query to find number of records scanned by database to search scholar with AED"
EXPLAIN SELECT * FROM st WHERE name = 'AED';
+----+-------------+-------+------------+------+---------------+----------+---------+-------+------+----------+-------+
| id | select_type | table | partitions | type | possible_keys | key      | key_len | ref   | rows | filtered | Extra |
+----+-------------+-------+------------+------+---------------+----------+---------+-------+------+----------+-------+
|  1 | SIMPLE      | st    | NULL       | ref  | ind_name      | ind_name | 83      | const |    1 |   100.00 | NULL  |
+----+-------------+-------+------------+------+---------------+----------+---------+-------+------+----------+-------+

Repeat "Write query to show indexes of table st"
EXPLAIN SELECT * FROM st WHERE name = 'AED';
--------+---------+------------+
| Table | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+-------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| st    |          0 | PRIMARY  |            1 | rollNo      | A         |          10 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| st    |          0 | email    |            1 | email       | A         |          10 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
| st    |          1 | ind_name |            1 | name        | A         |          10 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
+-------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+






-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
Consider the following student_and_exam table-
st_id  student_name   stream   exam_name   max_marks   result_date   headquater    description
1      Ramesh         Science  NEET        720         01-01-2022    Delhi         This exam is for Medical
2      Yogesh         Science  JEE         300         01-02-2022    Kanpur        This exam is for Engineering
3      Suresh         Arts     CLAT        150         20-03-2022    Bangalore     This exam is for Law
4      Usman          Commerce CA          400         24-03-2022    Ajmer         This exam is for Accountants
5      Joseph         Science  NEET        720         01-01-2022    Delhi         This exam is for Medical

How to make the table such that insertion, updation & deletion anamolies can be eliminated
Table: student
st_id    student_name
1        Ramesh
2        Yogesh
3        Suresh
4        Usman
5        Joseph

Table: Exam
Exam_id  stream   exam_name   max_marks   result_date   headquater    description
E001     Science  NEET        720         01-01-2022    Delhi         This exam is for Medical
E002     Science  JEE         300         01-02-2022    Kanpur        This exam is for Engineering
E003     Arts     CLAT        150         20-03-2022    Bangalore     This exam is for Law
E004     Commerce CA          400         24-03-2022    Ajmer         This exam is for Accountants

Table: student_exam
st_id    Exam_id
1        E001
2        E002
3        E003
4        E004
5        E004
-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
Table: Trainee (Unnormalized)
trainee_id  name    hobbies
1           Rohan   Dance
2           Joseph  Travel, Music
3           Roshesh Reading, Surfing

Table: Trainee (1-NF)
trainee_id  name      hobbies
1           Rohan     Dance
2           Joseph    Travel
2           Joseph    Music
3           Roshesh   Reading
3           Roshesh   Surfing

Another way
Table: Trainee
trainee_id  name
1           Rohan
2           Joseph
3           Roshesh

Table: hobbies
trainee_id  subject
1           Dance
2           Travel
2           Music
3           Reading
3           Surfing
-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
An Example
Table: orders
product_id  customer_id order_date  price
1           1           2022-01-01  2000
1           2           2023-01-01  2000
2           2           2021-02-02  3000
2           1           2020-02-02  3000

(product_id, customer_id) --> price [True]
(product_id) --> price [True]
(customer_id) --> price [False]

Table: orders
product_id  customer_id order_date
1           1           2022-01-01
1           2           2023-01-01
2           2           2021-02-02
2           1           2020-02-02

Table: product
product_id  price
1           2000
2           3000

Another example
Book(title, pubId, auId, price, auAddress)
(title, pubId, auId) -> price [true]
(title, pubId, auId) -> auAddress [true]
auId -> auAddress [true]

Decomposing the table to make them in second normal form
Book(title, pubId, auId, price)
Author(auId, auAddress)
-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
Say we have a relation
score(score_id, student_id, subject_id, marks, exam_name, max_marks)
(student_id, subject_id) -> exam_name [true]
exam_name -> max_marks [true]
(student_id, subject_id) -> max_marks [true]

score (score_id, student_id, subject_id, marks, exam_name)
exam (exam_name, max_marks)

Another example
building(buildingid, contractor, fee)
buildingid -> contractor [True]
contractor -> fee [True]
buildingid -> fee [True]

Decompose the table to eliminate the transitive dependency
building (buildingid, contractor)
contractor (contractor, fee)

