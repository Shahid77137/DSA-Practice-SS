Wrie a query to increase the x_per by 2% for all scholars whose x_per is more than 70.0
UPDATE st SET x_per = x_per + 2 WHERE x_per > 70.00;
Query OK, 5 rows affected (0.01 sec)
Rows matched: 5  Changed: 5  Warnings: 0

Wrie a query to set percentage to 66.00, state to kerala for student efg
UPDATE st SET x_per = 66.00, state = 'Kerala' WHERE name = 'efg';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

SELECT * FROM st;
+--------+------+------------+-------+-------------+
| rollNo | name | email      | x_per | state       |
+--------+------+------------+-------+-------------+
|      1 | ABC  | abc@ms.com | 77.42 | Karnataka   |
|      2 | BCD  | bcd@ms.com | 33.00 | Rajasthan   |
|      3 | CDE  | cde@ms.com | 77.24 | Maharashtra |
|      4 | def  | def@ms.com | 74.69 | West Bengal |
|      5 | efg  | efg@ms.com | 66.00 | Kerala      |
|      6 | fgh  | fgh@ms.com | 33.00 | Delhi       |
|      7 | ghi  | ghi@ms.com | 33.00 | Punjab      |
|      8 | ijk  | ijk@ms.com | 79.36 | Haryana     |
|      9 | jkl  | jkl@ms.com | 87.55 | Rajasthan   |
|     10 | AED  | NULL       | 56.00 | Karnataka   |
+--------+------+------------+-------+-------------+

Write query to delete students whose percentage is more than or equal to 85.00
DELETE FROM st WHERE x_per >= 85.00;
Query OK, 1 row affected (0.00 sec)

SELECT * FROM st;
+--------+------+------------+-------+-------------+
| rollNo | name | email      | x_per | state       |
+--------+------+------------+-------+-------------+
|      1 | ABC  | abc@ms.com | 77.42 | Karnataka   |
|      2 | BCD  | bcd@ms.com | 33.00 | Rajasthan   |
|      3 | CDE  | cde@ms.com | 77.24 | Maharashtra |
|      4 | def  | def@ms.com | 74.69 | West Bengal |
|      5 | efg  | efg@ms.com | 66.00 | Kerala      |
|      6 | fgh  | fgh@ms.com | 33.00 | Delhi       |
|      7 | ghi  | ghi@ms.com | 33.00 | Punjab      |
|      8 | ijk  | ijk@ms.com | 79.36 | Haryana     |
|     10 | AED  | NULL       | 56.00 | Karnataka   |
+--------+------+------------+-------+-------------+

Write query to view all records of the table such that only rollNo, name and x_per column should be in result.
SELECT rollNo, name, x_per FROM st;
+--------+------+-------+
| rollNo | name | x_per |
+--------+------+-------+
|      1 | ABC  | 77.42 |
|      2 | BCD  | 33.00 |
|      3 | CDE  | 77.24 |
|      4 | def  | 74.69 |
|      5 | efg  | 66.00 |
|      6 | fgh  | 33.00 |
|      7 | ghi  | 33.00 |
|      8 | ijk  | 79.36 |
|     10 | AED  | 56.00 |
+--------+------+-------+

Write query to display all distict value for column x_per
SELECT x_per FROM st;	#this will display value for all records, duuplicate result will also be there so this is incorrect answer
+-------+
| x_per |
+-------+
| 77.42 |
| 33.00 |
| 77.24 |
| 74.69 |
| 66.00 |
| 33.00 |
| 33.00 |
| 79.36 |
| 56.00 |
+-------+

SELECT DISTINCT(x_per) FROM st;	#This will display the distinct values for the column x_per
+-------+
| x_per |
+-------+
| 77.42 |
| 33.00 |
| 77.24 |
| 74.69 |
| 66.00 |
| 79.36 |
| 56.00 |
+-------+
Write query to view all records of the table such that rollNo should be displayed with heading Roll Number, name should be displayed with heading Student Name and x_per should be displayed with heading Inter Exam Percentage.
SELECT rollNo "Roll Number", name "Student Name", x_per "Inter Exam Percentage " FROM st;
#is same as  
SELECT rollNo AS "Roll Number", name AS "Student Name", x_per AS "Inter Exam Percentage " FROM st;
+-------------+--------------+------------------------+
| Roll Number | Student Name | Inter Exam Percentage  |
+-------------+--------------+------------------------+
|           1 | ABC          |                  77.42 |
|           2 | BCD          |                  33.00 |
|           3 | CDE          |                  77.24 |
|           4 | def          |                  74.69 |
|           5 | efg          |                  66.00 |
|           6 | fgh          |                  33.00 |
|           7 | ghi          |                  33.00 |
|           8 | ijk          |                  79.36 |
|          10 | AED          |                  56.00 |
+-------------+--------------+------------------------+

Write query to view all records of the table such that rollNo should be displayed with heading RN, name should be displayed with heading SName and x_per should be displayed with heading 10_Per.
SELECT rollNo RN, name SName, x_per 10_Per FROM st;
+----+-------+--------+
| RN | SName | 10_Per |
+----+-------+--------+
|  1 | ABC   |  77.42 |
|  2 | BCD   |  33.00 |
|  3 | CDE   |  77.24 |
|  4 | def   |  74.69 |
|  5 | efg   |  66.00 |
|  6 | fgh   |  33.00 |
|  7 | ghi   |  33.00 |
|  8 | ijk   |  79.36 |
| 10 | AED   |  56.00 |
+----+-------+--------+

Write query to add 10 to x_per and display with heading new_x_per (No need to use update query because this is one time result)
SELECT (x_per + 10) AS new_x_per FROM st;
+-----------+
| new_x_per |
+-----------+
|     87.42 |
|     43.00 |
|     87.24 |
|     84.69 |
|     76.00 |
|     43.00 |
|     43.00 |
|     89.36 |
|     66.00 |
+-----------+

Write query to find all students whose percentage is is more than 74.69
SELECT * FROM st WHERE x_per > 74.69;
+--------+------+------------+-------+-------------+
| rollNo | name | email      | x_per | state       |
+--------+------+------------+-------+-------------+
|      1 | ABC  | abc@ms.com | 77.42 | Karnataka   |
|      3 | CDE  | cde@ms.com | 77.24 | Maharashtra |
|      8 | ijk  | ijk@ms.com | 79.36 | Haryana     |
+--------+------+------------+-------+-------------+

Write query to find all students whose percentage is is more than or equal to 74.69
SELECT * FROM st WHERE x_per >= 74.69;
+--------+------+------------+-------+-------------+
| rollNo | name | email      | x_per | state       |
+--------+------+------------+-------+-------------+
|      1 | ABC  | abc@ms.com | 77.42 | Karnataka   |
|      3 | CDE  | cde@ms.com | 77.24 | Maharashtra |
|      4 | def  | def@ms.com | 74.69 | West Bengal |
|      8 | ijk  | ijk@ms.com | 79.36 | Haryana     |
+--------+------+------------+-------+-------------+

Write query to find rollNo as RN, name as Sname, x_per as 10_per whose x_per is less than 66.00
SELECT rollNo as RN, name as Sname, x_per as 10_per FROM st WHERE x_per < 66.00;
+----+-------+--------+
| RN | Sname | 10_per |
+----+-------+--------+
|  2 | BCD   |  33.00 |
|  6 | fgh   |  33.00 |
|  7 | ghi   |  33.00 |
| 10 | AED   |  56.00 |
+----+-------+--------+

Write query to find all students whose x_per is less than or equal to 66.00
SELECT * FROM st WHERE x_per <= 66.00;
+--------+------+------------+-------+-----------+
| rollNo | name | email      | x_per | state     |
+--------+------+------------+-------+-----------+
|      2 | BCD  | bcd@ms.com | 33.00 | Rajasthan |
|      5 | efg  | efg@ms.com | 66.00 | Kerala    |
|      6 | fgh  | fgh@ms.com | 33.00 | Delhi     |
|      7 | ghi  | ghi@ms.com | 33.00 | Punjab    |
|     10 | AED  | NULL       | 56.00 | Karnataka |
+--------+------+------------+-------+-----------+

Write query to find all students whose state is Karnataka
SELECT * FROM st WHERE state = 'Karnataka';
+--------+------+------------+-------+-----------+
| rollNo | name | email      | x_per | state     |
+--------+------+------------+-------+-----------+
|      1 | ABC  | abc@ms.com | 77.42 | Karnataka |
|     10 | AED  | NULL       | 56.00 | Karnataka |
+--------+------+------------+-------+-----------+

Write query to find all students whose x_per is not euals to 33.00
SELECT * FROM st WHERE x_per != 33.00;
+--------+------+------------+-------+-------------+
| rollNo | name | email      | x_per | state       |
+--------+------+------------+-------+-------------+
|      1 | ABC  | abc@ms.com | 77.42 | Karnataka   |
|      3 | CDE  | cde@ms.com | 77.24 | Maharashtra |
|      4 | def  | def@ms.com | 74.69 | West Bengal |
|      5 | efg  | efg@ms.com | 66.00 | Kerala      |
|      8 | ijk  | ijk@ms.com | 79.36 | Haryana     |
|     10 | AED  | NULL       | 56.00 | Karnataka   |
+--------+------+------------+-------+-------------+

Write a query to find all students whose x_per is more than or equals to 33.00 and less than or equals to 74.69;
SELECT * FROM st WHERE x_per BETWEEN 33.00 AND 74.69;
+--------+------+------------+-------+-------------+
| rollNo | name | email      | x_per | state       |
+--------+------+------------+-------+-------------+
|      2 | BCD  | bcd@ms.com | 33.00 | Rajasthan   |
|      4 | def  | def@ms.com | 74.69 | West Bengal |
|      5 | efg  | efg@ms.com | 66.00 | Kerala      |
|      6 | fgh  | fgh@ms.com | 33.00 | Delhi       |
|      7 | ghi  | ghi@ms.com | 33.00 | Punjab      |
|     10 | AED  | NULL       | 56.00 | Karnataka   |
+--------+------+------------+-------+-------------+

Write a query to find all students whose x_per is neither more than or equals to 33.00 and nor less than or equals to 74.69;
SELECT * FROM st WHERE x_per NOT BETWEEN 33.00 AND 74.69;
+--------+------+------------+-------+-------------+
| rollNo | name | email      | x_per | state       |
+--------+------+------------+-------+-------------+
|      1 | ABC  | abc@ms.com | 77.42 | Karnataka   |
|      3 | CDE  | cde@ms.com | 77.24 | Maharashtra |
|      8 | ijk  | ijk@ms.com | 79.36 | Haryana     |
+--------+------+------------+-------+-------------+

Write a query to find all students whose percentage is more than or equal to 60.00 and the student must be from state Karnataka
SELECT * FROM st WHERE x_per >= 60.00 AND state = 'Karnataka';
+--------+------+------------+-------+-----------+
| rollNo | name | email      | x_per | state     |
+--------+------+------------+-------+-----------+
|      1 | ABC  | abc@ms.com | 77.42 | Karnataka |
+--------+------+------------+-------+-----------+

Alternative Query
SELECT * FROM st WHERE x_per >= 60.00 && state = 'Karnataka';

Write a query to find all students whose percentage is more than or equal to 60.00 or the student must be from state Karnataka
SELECT * FROM st WHERE x_per >= 60.00 OR state = 'Karnataka';
+--------+------+------------+-------+-------------+
| rollNo | name | email      | x_per | state       |
+--------+------+------------+-------+-------------+
|      1 | ABC  | abc@ms.com | 77.42 | Karnataka   |
|      3 | CDE  | cde@ms.com | 77.24 | Maharashtra |
|      4 | def  | def@ms.com | 74.69 | West Bengal |
|      5 | efg  | efg@ms.com | 66.00 | Kerala      |
|      8 | ijk  | ijk@ms.com | 79.36 | Haryana     |
|     10 | AED  | NULL       | 56.00 | Karnataka   |
+--------+------+------------+-------+-------------+

Alternative Query
SELECT * FROM st WHERE x_per >= 60.00 || state = 'Karnataka';

Write a query to find all students whose percentage is more than 60.00 and less than 77.65 or whose state is Karnataka
SELECT * FROM st WHERE (x_per > 60.00 AND x_per < 77.65) OR state = 'Karnataka';
+--------+------+------------+-------+-------------+
| rollNo | name | email      | x_per | state       |
+--------+------+------------+-------+-------------+
|      1 | ABC  | abc@ms.com | 77.42 | Karnataka   |
|      3 | CDE  | cde@ms.com | 77.24 | Maharashtra |
|      4 | def  | def@ms.com | 74.69 | West Bengal |
|      5 | efg  | efg@ms.com | 66.00 | Kerala      |
|     10 | AED  | NULL       | 56.00 | Karnataka   |
+--------+------+------------+-------+-------------+

Alternative Query
SELECT * FROM st WHERE (x_per > 60.00 AND x_per < 77.65) || state = 'Karnataka';

Write a query to find all scholars whose state is either Karnataka, Punjab or Rajasthan
SELECT * FROM st WHERE state = 'Karnataka' || state = 'Punjab' || state = 'Rajasthan';

Incorrect Way to write query
SELECT * FROM st WHERE state = 'Karnataka' || 'Punjab' || 'Rajasthan'; #INCORRECT

Alternative Query
SELECT * FROM st WHERE state IN('Karnataka', 'Punjab', 'Rajasthan');
+--------+------+------------+-------+-----------+
| rollNo | name | email      | x_per | state     |
+--------+------+------------+-------+-----------+
|      1 | ABC  | abc@ms.com | 77.42 | Karnataka |
|      2 | BCD  | bcd@ms.com | 33.00 | Rajasthan |
|      7 | ghi  | ghi@ms.com | 33.00 | Punjab    |
|     10 | AED  | NULL       | 56.00 | Karnataka |
+--------+------+------------+-------+-----------+

Write a query to find all scholars whose state is neither Karnataka nor Punjab nor Rajasthan
SELECT * FROM st WHERE state NOT IN('Karnataka', 'Punjab', 'Rajasthan');
+--------+------+------------+-------+-------------+
| rollNo | name | email      | x_per | state       |
+--------+------+------------+-------+-------------+
|      3 | CDE  | cde@ms.com | 77.24 | Maharashtra |
|      4 | def  | def@ms.com | 74.69 | West Bengal |
|      5 | efg  | efg@ms.com | 66.00 | Kerala      |
|      6 | fgh  | fgh@ms.com | 33.00 | Delhi       |
|      8 | ijk  | ijk@ms.com | 79.36 | Haryana     |
+--------+------+------------+-------+-------------+

Write a query to find all scholars whose email is null
SELECT * FROM st WHERE email = NULL; #INCORRECT
SELECT * FROM st WHERE email IS NULL;
+--------+------+-------+-------+-----------+
| rollNo | name | email | x_per | state     |
+--------+------+-------+-------+-----------+
|     10 | AED  | NULL  | 56.00 | Karnataka |
+--------+------+-------+-------+-----------+

Write a query to find all scholars whose email is not null
SELECT * FROM st WHERE email != NULL; #INCORRECT
SELECT * FROM st WHERE email IS NOT NULL;
+--------+------+------------+-------+-------------+
| rollNo | name | email      | x_per | state       |
+--------+------+------------+-------+-------------+
|      1 | ABC  | abc@ms.com | 77.42 | Karnataka   |
|      2 | BCD  | bcd@ms.com | 33.00 | Rajasthan   |
|      3 | CDE  | cde@ms.com | 77.24 | Maharashtra |
|      4 | def  | def@ms.com | 74.69 | West Bengal |
|      5 | efg  | efg@ms.com | 66.00 | Kerala      |
|      6 | fgh  | fgh@ms.com | 33.00 | Delhi       |
|      7 | ghi  | ghi@ms.com | 33.00 | Punjab      |
|      8 | ijk  | ijk@ms.com | 79.36 | Haryana     |
+--------+------+------------+-------+-------------+

Write a query to find all scholars whose name starts with letter 'a'
SELECT * FROM st WHERE name LIKE 'A%';
+--------+------+------------+-------+-----------+
| rollNo | name | email      | x_per | state     |
+--------+------+------------+-------+-----------+
|      1 | ABC  | abc@ms.com | 77.42 | Karnataka |
|     10 | AED  | NULL       | 56.00 | Karnataka |
+--------+------+------------+-------+-----------+

Write a query to find all scholars whose name ends with letter 'd'
SELECT * FROM st WHERE name LIKE '%D';
+--------+------+------------+-------+-----------+
| rollNo | name | email      | x_per | state     |
+--------+------+------------+-------+-----------+
|      2 | BCD  | bcd@ms.com | 33.00 | Rajasthan |
|     10 | AED  | NULL       | 56.00 | Karnataka |
+--------+------+------------+-------+-----------+

Write a query to find all scholars whose name has letter 'C' anywhere
SELECT * FROM st WHERE name LIKE '%C%';
+--------+------+------------+-------+-------------+
| rollNo | name | email      | x_per | state       |
+--------+------+------------+-------+-------------+
|      1 | ABC  | abc@ms.com | 77.42 | Karnataka   |
|      2 | BCD  | bcd@ms.com | 33.00 | Rajasthan   |
|      3 | CDE  | cde@ms.com | 77.24 | Maharashtra |
+--------+------+------------+-------+-------------+

Write a query to find all scholars whose name has second letter 'B'
SELECT * FROM st WHERE name LIKE '_B%';
+--------+------+------------+-------+-----------+
| rollNo | name | email      | x_per | state     |
+--------+------+------------+-------+-----------+
|      1 | ABC  | abc@ms.com | 77.42 | Karnataka |
+--------+------+------------+-------+-----------+

Write a query to find all scholars whose name has second last letter 'C'
SELECT * FROM st WHERE name LIKE '%C_';
+--------+------+------------+-------+-----------+
| rollNo | name | email      | x_per | state     |
+--------+------+------------+-------+-----------+
|      2 | BCD  | bcd@ms.com | 33.00 | Rajasthan |
+--------+------+------------+-------+-----------+

Write a query to find all scholars whose name has 3 letters and middle letter should be 'D'
SELECT * FROM st WHERE name LIKE '_D_';
+--------+------+------------+-------+-------------+
| rollNo | name | email      | x_per | state       |
+--------+------+------------+-------+-------------+
|      3 | CDE  | cde@ms.com | 77.24 | Maharashtra |
+--------+------+------------+-------+-------------+

Write a query to show the records of students in the ascending order of x_per
SELECT * FROM st ORDER BY x_per;
is same as
SELECT * FROM st ORDER BY x_per ASC;
+--------+------+------------+-------+-------------+
| rollNo | name | email      | x_per | state       |
+--------+------+------------+-------+-------------+
|      2 | BCD  | bcd@ms.com | 33.00 | Rajasthan   |
|      6 | fgh  | fgh@ms.com | 33.00 | Delhi       |
|      7 | ghi  | ghi@ms.com | 33.00 | Punjab      |
|     10 | AED  | NULL       | 56.00 | Karnataka   |
|      5 | efg  | efg@ms.com | 66.00 | Kerala      |
|      4 | def  | def@ms.com | 74.69 | West Bengal |
|      3 | CDE  | cde@ms.com | 77.24 | Maharashtra |
|      1 | ABC  | abc@ms.com | 77.42 | Karnataka   |
|      8 | ijk  | ijk@ms.com | 79.36 | Haryana     |
+--------+------+------------+-------+-------------+
	
Write a query to show the records of students in the ascending order of the x_per if tie in x_per they should be displayed in the descending order of the rollNo
SELECT * FROM st ORDER BY x_per, rollNo DESC;
+--------+------+------------+-------+-------------+
| rollNo | name | email      | x_per | state       |
+--------+------+------------+-------+-------------+
|      7 | ghi  | ghi@ms.com | 33.00 | Punjab      |
|      6 | fgh  | fgh@ms.com | 33.00 | Delhi       |
|      2 | BCD  | bcd@ms.com | 33.00 | Rajasthan   |
|     10 | AED  | NULL       | 56.00 | Karnataka   |
|      5 | efg  | efg@ms.com | 66.00 | Kerala      |
|      4 | def  | def@ms.com | 74.69 | West Bengal |
|      3 | CDE  | cde@ms.com | 77.24 | Maharashtra |
|      1 | ABC  | abc@ms.com | 77.42 | Karnataka   |
|      8 | ijk  | ijk@ms.com | 79.36 | Haryana     |
+--------+------+------------+-------+-------------+

Write a query to show name, email and x_per of students in the descending order of name
SELECT name, email, x_per FROM st ORDER BY name DESC;
+------+------------+-------+
| name | email      | x_per |
+------+------------+-------+
| ijk  | ijk@ms.com | 79.36 |
| ghi  | ghi@ms.com | 33.00 |
| fgh  | fgh@ms.com | 33.00 |
| efg  | efg@ms.com | 66.00 |
| def  | def@ms.com | 74.69 |
| CDE  | cde@ms.com | 77.24 |
| BCD  | bcd@ms.com | 33.00 |
| AED  | NULL       | 56.00 |
| ABC  | abc@ms.com | 77.42 |
+------+------------+-------+

Queries to demonstrate numerical single row functions	
mysql> SELECT abs(-10), abs(10);
+----------+---------+
| abs(-10) | abs(10) |
+----------+---------+
|       10 |      10 |
+----------+---------+
1 row in set (0.00 sec)

mysql> SELECT mod(45, 10), mod(-43,10);
+-------------+-------------+
| mod(45, 10) | mod(-43,10) |
+-------------+-------------+
|           5 |          -3 |
+-------------+-------------+
1 row in set (0.00 sec)

mysql> SELECT round(1.49), round(1.50), round(1.51);
+-------------+-------------+-------------+
| round(1.49) | round(1.50) | round(1.51) |
+-------------+-------------+-------------+
|           1 |           2 |           2 |
+-------------+-------------+-------------+
1 row in set (0.00 sec)

mysql> SELECT round(1.44,1), round(1.45,1), round(1.46,1);
+---------------+---------------+---------------+
| round(1.44,1) | round(1.45,1) | round(1.46,1) |
+---------------+---------------+---------------+
|           1.4 |           1.5 |           1.5 |
+---------------+---------------+---------------+
1 row in set (0.00 sec)

mysql> SELECT truncate(1.49, 0), truncate(1.50, 0), truncate(1.51, 0);
+-------------------+-------------------+-------------------+
| truncate(1.49, 0) | truncate(1.50, 0) | truncate(1.51, 0) |
+-------------------+-------------------+-------------------+
|                 1 |                 1 |                 1 |
+-------------------+-------------------+-------------------+
1 row in set (0.00 sec)

mysql> SELECT truncate(1.44, 1), truncate(1.45, 1), truncate(1.46, 1);
+-------------------+-------------------+-------------------+
| truncate(1.44, 1) | truncate(1.45, 1) | truncate(1.46, 1) |
+-------------------+-------------------+-------------------+
|               1.4 |               1.4 |               1.4 |
+-------------------+-------------------+-------------------+
1 row in set (0.00 sec)

mysql> SELECT floor(1.01), floor(1.50), floor(1.99);
+-------------+-------------+-------------+
| floor(1.01) | floor(1.50) | floor(1.99) |
+-------------+-------------+-------------+
|           1 |           1 |           1 |
+-------------+-------------+-------------+
1 row in set (0.00 sec)

mysql> SELECT ceil(1.01), ceil(1.50), ceil(1.99);
+------------+------------+------------+
| ceil(1.01) | ceil(1.50) | ceil(1.99) |
+------------+------------+------------+
|          2 |          2 |          2 |
+------------+------------+------------+
1 row in set (0.00 sec)

mysql> SELECT greatest(10, -1, 20, -5, -25, 24), least(10, -1, 20, -5, -25, 24);
+-----------------------------------+--------------------------------+
| greatest(10, -1, 20, -5, -25, 24) | least(10, -1, 20, -5, -25, 24) |
+-----------------------------------+--------------------------------+
|                                24 |                            -25 |
+-----------------------------------+--------------------------------+
1 row in set (0.00 sec)

Queries to demonstrate character single row functions	
mysql> SELECT UPPER('Masai'), LOWER('Masai'), length('Masai');
+----------------+----------------+-----------------+
| UPPER('Masai') | LOWER('Masai') | length('Masai') |
+----------------+----------------+-----------------+
| MASAI          | masai          |               5 |
+----------------+----------------+-----------------+
1 row in set (0.00 sec)

mysql> SELECT replace('MESEI', 'E', 'A'), concat('Masai', ' School'), substr('Masai', 2, 3);
+----------------------------+----------------------------+-----------------------+
| replace('MESEI', 'E', 'A') | concat('Masai', ' School') | substr('Masai', 2, 3) |
+----------------------------+----------------------------+-----------------------+
| MASAI                      | Masai School               | asa                   |
+----------------------------+----------------------------+-----------------------+

Queries to demonstrate Date functions
mysql> SELECT CURDATE(), date_format('2023-01-01', '%d-%m-%Y'), adddate('2023-01-01', INTERVAL 10 DAY);
+------------+---------------------------------------+----------------------------------------+
| CURDATE()  | date_format('2023-01-01', '%d-%m-%Y') | adddate('2023-01-01', INTERVAL 10 DAY) |
+------------+---------------------------------------+----------------------------------------+
| 2023-02-06 | 01-01-2023                            | 2023-01-11                             |
+------------+---------------------------------------+----------------------------------------+

mysql> SELECT NOW(), SLEEP(2), NOW();
+---------------------+----------+---------------------+
| NOW()               | SLEEP(2) | NOW()               |
+---------------------+----------+---------------------+
| 2023-02-06 16:12:22 |        0 | 2023-02-06 16:12:22 |
+---------------------+----------+---------------------+
1 row in set (2.00 sec)

mysql> SELECT SYSDATE(), SLEEP(2), SYSDATE();
+---------------------+----------+---------------------+
| SYSDATE()           | SLEEP(2) | SYSDATE()           |
+---------------------+----------+---------------------+
| 2023-02-06 16:12:35 |        0 | 2023-02-06 16:12:37 |
+---------------------+----------+---------------------+

Write query to see which is present working database
mysql> SELECT DATABASE();
+-----------------+
| DATABASE()      |
+-----------------+
| sb_101_block_23 |
+-----------------+

Queries to demonstrate multi row functions
Write a query to display minimum percentage among all students.
mysql> SELECT MIN(x_per) "MIN_PERCENTAGE" FROM st;
+----------------+
| MIN_PERCENTAGE |
+----------------+
|          33.00 |
+----------------+

Write a query to display maximum percentage among all students.
mysql> SELECT MAX(x_per) "MAX_PERCENTAGE" FROM st;
+----------------+
| MAX_PERCENTAGE |
+----------------+
|          79.36 |
+----------------+

Write a query to display total percentage of all students.
mysql> SELECT SUM(x_per) "TOTAL_PERCENTAGE" FROM st;
+------------------+
| TOTAL_PERCENTAGE |
+------------------+
|           529.71 |
+------------------+

Write a query to display average percentage of all students.
mysql> SELECT AVG(x_per) "AVG_PERCENTAGE" FROM st;
+----------------+
| AVG_PERCENTAGE |
+----------------+
|      58.856667 |
+----------------+

Write a query to count total students who have an email idm count total students who have x_per and counting of total students.
mysql> SELECT COUNT(email) TOTAL_EMAIL, COUNT(x_per) TOTAL_PER, COUNT(*) TOTAL_RECORDS FROM st;
+-------------+-----------+---------------+
| TOTAL_EMAIL | TOTAL_PER | TOTAL_RECORDS |
+-------------+-----------+---------------+
|           8 |         9 |             9 |
+-------------+-----------+---------------+

mysql> SELECT * FROM st WHERE x_per = AVG(x_per);	#Error

Write a query to rollno, name and email of all students but if a student do not have an email then 'No Email' should be displayed instead of null
mysql> SELECT rollno, name, IF(email IS NULL, 'No Email', email) FROM st;
+--------+------+--------------------------------------+
| rollno | name | IF(email IS NULL, 'No Email', email) |
+--------+------+--------------------------------------+
|      1 | ABC  | abc@ms.com                           |
|      2 | BCD  | bcd@ms.com                           |
|      3 | CDE  | cde@ms.com                           |
|      4 | def  | def@ms.com                           |
|      5 | efg  | efg@ms.com                           |
|      6 | fgh  | fgh@ms.com                           |
|      7 | ghi  | ghi@ms.com                           |
|      8 | ijk  | ijk@ms.com                           |
|     10 | AED  | No Email                             |
+--------+------+--------------------------------------+

Write a query to name, x_per and remark for student such that remark should be according to following criteria
WHEN x_per < 33.00 - 'FAIL'
WHEN x_per < 60.00 - 'PASS, IMPROVEMENT REQUIRED'
WHEN x_per < 75.00 - 'PASS, GOOD JOB'
ELSE 'GENIUS'
mysql> SELECT name, x_per,
    -> (CASE
    -> WHEN x_per < 33.00 THEN 'FAIL'
    -> WHEN x_per < 60.00 THEN 'PASS, IMPROVEMENT REQUIRED'
    -> WHEN x_per < 75.00 THEN 'PASS, GOOD JOB'
    -> ELSE 'GENIUS'
    -> END) REMARK
    -> FROM st;
+------+-------+----------------------------+
| name | x_per | REMARK                     |
+------+-------+----------------------------+
| ABC  | 77.42 | GENIUS                     |
| BCD  | 33.00 | PASS, IMPROVEMENT REQUIRED |
| CDE  | 77.24 | GENIUS                     |
| def  | 74.69 | PASS, GOOD JOB             |
| efg  | 66.00 | PASS, GOOD JOB             |
| fgh  | 33.00 | PASS, IMPROVEMENT REQUIRED |
| ghi  | 33.00 | PASS, IMPROVEMENT REQUIRED |
| ijk  | 79.36 | GENIUS                     |
| AED  | 56.00 | PASS, IMPROVEMENT REQUIRED |
+------+-------+----------------------------+

#The same table is to be used in example of subquery also.