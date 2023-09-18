mysql> CREATE TABLE employee(
	Eid VARCHAR(4) PRIMARY KEY,
	Ename VARCHAR(10) NOT NULL,
	Dept VARCHAR(10) NOT NULL,
	Salary INT,
	Designation VARCHAR(10) NOT NULL
);
Query OK, 0 rows affected (0.01 sec)

mysql> INSERT INTO employee
VALUES
('E001', 'ABC', 'SALES', 25000, 'SM'),
('E002', 'PQR', 'SALES', 35000, 'SM'),
('E003', 'RTY', 'HRM', 58000, 'SSM'),
('E004', 'RED', 'HRM', 38000, 'HR'),
('E005', 'YUT', 'BDO', 25000, 'BM'),
('E006', 'RFT', 'BDO', 48000, 'BM');
Query OK, 6 rows affected (0.00 sec)
Records: 6  Duplicates: 0  Warnings: 0

Write query to find sum of salaries paid department wise (using WHERE clause)
SELECT Dept, SUM(Salary) "TOTAL_SAL" FROM employee WHERE Dept = 'SALES';
+-------+-----------+
| Dept  | TOTAL_SAL |
+-------+-----------+
| SALES |     60000 |
+-------+-----------+

SELECT Dept, SUM(Salary) "TOTAL_SAL" FROM employee WHERE Dept = 'HRM';
+------+-----------+
| Dept | TOTAL_SAL |
+------+-----------+
| HRM  |     96000 |
+------+-----------+

SELECT Dept, SUM(Salary) "TOTAL_SAL" FROM employee WHERE Dept = 'BDO';
+------+-----------+
| Dept | TOTAL_SAL |
+------+-----------+
| BDO  |     73000 |
+------+-----------+

Write query to find sum of salaries paid department wise (using GROUP BY clause)
SELECT Dept, SUM(Salary) "TOTAL_SAL" FROM employee GROUP BY Dept;
+-------+-----------+
| Dept  | TOTAL_SAL |
+-------+-----------+
| BDO   |     73000 |
| HRM   |     96000 |
| SALES |     60000 |
+-------+-----------+

How the above query will execute-
1. FROM employee
Eid   Ename  Dept     Salary  Designation
E001	ABC	   SALES	  25000   SM
E002	PQR	   SALES	  35000   SM
E003	RTY	   HRM	    58000   SSM
E004	RED	   HRM	    38000   HR
E005	YUT	   BDO	    25000   BM
E006	RFT	   BDO	    48000   BM

2. GROUP BY Dept
Group-1
E001	ABC	   SALES	  25000   SM
E002	PQR	   SALES	  35000   SM

Group-2
E003	RTY	   HRM	    58000   SSM
E004	RED	   HRM	    38000   HR

Group-3
E005	YUT	   BDO	    25000   BM
E006	RFT	   BDO	    48000   BM

3. SELECT Dept, SUM(Salary) "TOTAL_SAL"
Dept   TOTAL_SAL
SALES  60000
HRM    96000
BDO    73000

Write query to find counting of employees for combination of department and designation.
SELECT dept, designation, COUNT(*) "TOTAL_EMP" FROM employee GROUP BY dept, designation;
+-------+-------------+-----------+
| dept  | designation | TOTAL_EMP |
+-------+-------------+-----------+
| BDO   | BM          |         2 |
| HRM   | HR          |         1 |
| HRM   | SSM         |         1 |
| SALES | SM          |         2 |
+-------+-------------+-----------+

1. FROM employee
Eid   Ename  Dept     Salary  Designation
E001	ABC	   SALES	  25000   SM
E002	PQR	   SALES	  35000   SM
E003	RTY	   HRM	    58000   SSM
E004	RED	   HRM	    38000   HR
E005	YUT	   BDO	    25000   BM
E006	RFT	   BDO	    48000   BM	

2. GROUP BY Dept, designation
Group-1
E001	ABC	   SALES	  25000   SM
E002	PQR	   SALES	  35000   SM
Group-2
E003	RTY	   HRM	    58000   SSM
Group-3
E004	RED	   HRM	    38000   HR
Group-4
E005	YUT	   BDO	    25000   BM
E006	RFT	   BDO	    48000   BM

3. SELECT dept, designation, COUNT(*) "TOTAL_EMP"
dept  designation  TOTAL_EMP
BDO	  BM	         2
HRM	  HR	         1
HRM	  SSM	         1
SALES	SM	         2

Write a query to find department name and total salary paid department wise such that you need to count only those employees whose salary is more than 25000; display the records in the descending order of total salary
SELECT Dept, SUM(salary) "TOTAL_SAL"
FROM employee
WHERE salary > 25000
GROUP BY Dept
ORDER BY TOTAL_SAL DESC;

1. FROM employee
Eid   Ename  Dept     Salary  Designation
E001	ABC	   SALES	  25000   SM
E002	PQR	   SALES	  35000   SM
E003	RTY	   HRM	    58000   SSM
E004	RED	   HRM	    38000   HR
E005	YUT	   BDO	    25000   BM
E006	RFT	   BDO	    48000   BM	

2. WHERE salary > 25000
Eid   Ename  Dept     Salary  Designation
E002	PQR	   SALES	  35000   SM
E003	RTY	   HRM	    58000   SSM
E004	RED	   HRM	    38000   HR
E006	RFT	   BDO	    48000   BM	

3. GROUP BY Dept
Eid   Ename  Dept     Salary  Designation
Group-1
E002	PQR	   SALES	  35000   SM

Group-2
E003	RTY	   HRM	    58000   SSM
E004	RED	   HRM	    38000   HR

Group-3
E006	RFT	   BDO	    48000   BM

4. SELECT Dept, SUM(salary) "TOTAL_SAL"
Dept   TOTAL_SAL
SALES  35000
HRM    96000
BDO    48000

5. ORDER BY TOTAL_SAL DESC;
Dept   TOTAL_SAL
HRM    96000
BDO    48000
SALES  35000

Write a query to find department name and total salary paid department wise such that you need to include only those departments whose sum of salary is more than 65000
SELECT dept, SUM(salary) "TOTAL_SAL" FROM employee GROUP BY dept HAVING SUM(salary) > 65000 ORDER BY TOTAL_SAL;
+------+-----------+
| dept | TOTAL_SAL |
+------+-----------+
| BDO  |     73000 |
| HRM  |     96000 |
+------+-----------+

1. FROM employee
Eid   Ename  Dept     Salary  Designation
E001	ABC	   SALES	  25000   SM
E002	PQR	   SALES	  35000   SM
E003	RTY	   HRM	    58000   SSM
E004	RED	   HRM	    38000   HR
E005	YUT	   BDO	    25000   BM
E006	RFT	   BDO	    48000   BM

2. GROUP BY dept
Group-1
E001	ABC	   SALES	  25000   SM
E002	PQR	   SALES	  35000   SM

Group-2
E003	RTY	   HRM	    58000   SSM
E004	RED	   HRM	    38000   HR

Group-3
E005	YUT	   BDO	    25000   BM
E006	RFT	   BDO	    48000   BM

3. HAVING SUM(salary) > 65000;
Group-2
E003	RTY	   HRM	    58000   SSM
E004	RED	   HRM	    38000   HR

Group-3
E005	YUT	   BDO	    25000   BM
E006	RFT	   BDO	    48000   BM

4. SELECT dept, SUM(salary) "TOTAL_SAL"
dept    TOTAL_SAL
HRM     96000
BDO     73000

5. ORDER BY TOTAL_SAL
dept    TOTAL_SAL
BDO     73000
HRM     96000

Write a query to find department, average salary of the employees department wise such that include only those employees whose designation has letter 'M' anywhere; consider only those groups whose total salary is more than or equal to 60000. Display the records in the descending order of the average salaries.

SELECT dept, AVG(salary) "AVG_SALARY" FROM employee WHERE designation LIKE '%M%' GROUP BY dept HAVING SUM(salary) >= 60000 ORDER BY AVG_SALARY DESC;

+-------+------------+
| dept  | AVG_SALARY |
+-------+------------+
| BDO   | 36500.0000 |
| SALES | 30000.0000 |
+-------+------------+

1. FROM employee
Eid   Ename  Dept     Salary  Designation
E001	ABC	   SALES	  25000   SM
E002	PQR	   SALES	  35000   SM
E003	RTY	   HRM	    58000   SSM
E004	RED	   HRM	    38000   HR
E005	YUT	   BDO	    25000   BM
E006	RFT	   BDO	    48000   BM

2. WHERE designation LIKE '%M%'
Eid   Ename  Dept     Salary  Designation
E001	ABC	   SALES	  25000   SM
E002	PQR	   SALES	  35000   SM
E003	RTY	   HRM	    58000   SSM
E005	YUT	   BDO	    25000   BM
E006	RFT	   BDO	    48000   BM

3. GROUP BY dept
Group-1
E001	ABC	   SALES	  25000   SM
E002	PQR	   SALES	  35000   SM

Group-2
E003	RTY	   HRM	    58000   SSM

Group-3
E005	YUT	   BDO	    25000   BM
E006	RFT	   BDO	    48000   BM

4. HAVING SUM(salary) >= 60000
Group-1
E001	ABC	   SALES	  25000   SM
E002	PQR	   SALES	  35000   SM
	
Group-3
E005	YUT	   BDO	    25000   BM
E006	RFT	   BDO	    48000   BM

5. SELECT dept, AVG(salary) "AVG_SALARY"
dept    AVG_SALARY
SALES   30000
BDO     36500

6. ORDER BY AVG_SALARY DESC;
dept    AVG_SALARY
BDO     36500
SALES   30000

-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
An Example
CREATE TABLE category (
	cat_id int(6) PRIMARY KEY,
	cat_name varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO category
VALUES
(1, 'Electronics'),
(2, 'Stationary'),
(3, 'Furniture'),
(4, 'Food Items'),
(5, 'House-keeping Goods');

CREATE TABLE product(
	pro_id INT(8) PRIMARY KEY,
	pro_name VARCHAR(20) NOT NULL,
	MRP double(7,2),
	MFG_DATE date NOT NULL,
	category_id INT(6),
	CONSTRAINT product_category_fk FOREIGN KEY (category_id) REFERENCES category(cat_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO product
VALUES
(1, 'Parker Pen', 349, '2022-06-16', 2),
(2, 'Student Chair', 1499, '2021-12-31', 3),
(3, 'Dark Chocolate', 399, '2022-04-30', 4),
(4, 'Microwave Oven', 10500, '2022-05-15', 1),
(5, 'AC', 34500, '2022-05-01', 1),
(6, 'Footware', 599, '2022-05-01', NULL);

SELECT * FROM category
cat_id  cat_name
1       Electronics
2       Stationary
3       Furniture
4       Food Items
5       House-keeping Goods

SELECT * FROM Product;
pro_id  pro_name       MRP       MFG_DATE    category_id
1       Parker Pen     349.00	   2022-06-16	 2
2       Student Chair	 1499.00	 2021-12-31	 3
3       Dark Chocolate 399.00	   2022-04-30	 4
4       Microwave Oven 10500.00	 2022-05-15	 1
5       AC	        	 34500.00  2022-05-01	 1
6       Footware	     599.00	   2022-05-01	 NULL

Write query to perform cross join on category and product table.
SELECT * FROM Category CROSS JOIN Product; #Left table: category Right table: product
SELECT * FROM Category, Product; #Left table: category Right table: product

SELECT * FROM category, product;	#Left table: category Right table: product
cat_id  cat_name             pro_id  pro_name       MRP       MFG_DATE    category_id
1	      Electronics	         1       Parker Pen     349.00	  2022-06-16	2
2       Stationary		       1       Parker Pen     349.00	  2022-06-16	2
3       Furniture		         1       Parker Pen     349.00	  2022-06-16	2
4       Food Items		       1       Parker Pen     349.00	  2022-06-16	2
5       House-keeping Goods	 1       Parker Pen	    349.00	  2022-06-16	2
1       Electronics          2       Student Chair	1499.00	  2021-12-31	3
2       Stationary           2       Student Chair	1499.00	  2021-12-31	3
3       Furniture            2       Student Chair	1499.00	  2021-12-31	3
4       Food Items           2       Student Chair	1499.00	  2021-12-31	3
5       House-keeping Goods  2       Student Chair	1499.00	  2021-12-31	3
1       Electronics          3       Dark Chocolate	399.00	  2022-04-30	4
2       Stationary           3       Dark Chocolate	399.00	  2022-04-30	4
3       Furniture            3       Dark Chocolate	399.00	  2022-04-30	4
4       Food Items           3       Dark Chocolate	399.00	  2022-04-30	4
5       House-keeping Goods  3       Dark Chocolate	399.00	  2022-04-30	4
1       Electronics          4       Microwave Oven	10500.00	2022-05-15	1
2       Stationary           4       Microwave Oven	10500.00	2022-05-15	1
3       Furniture            4       Microwave Oven	10500.00	2022-05-15	1
4       Food Items           4       Microwave Oven	10500.00	2022-05-15	1
5       House-keeping Goods	 4       Microwave Oven	10500.00	2022-05-15	1
1       Electronics          5       AC             34500.00	2022-05-01	1
2       Stationary           5       AC             34500.00	2022-05-01	1
3       Furniture            5       AC             34500.00	2022-05-01	1
4       Food Items           5       AC             34500.00	2022-05-01	1
5       House-keeping Goods	 5       AC             34500.00	2022-05-01	1
1       Electronics          6       Footware	      599.00	  2022-05-01	NULL
2       Stationary           6       Footware	      599.00	  2022-05-01	NULL	
3       Furniture            6       Footware	      599.00	  2022-05-01	NULL
4       Food Items           6       Footware	      599.00	  2022-05-01	NULL
5       House-keeping Goods	 6       Footware	      599.00	  2022-05-01	NULL

Write query to display all records from category and product table that has any matching entry. (Hint: Use Inner Join)
SELECT *
FROM category
INNER JOIN product
ON category.cat_id = product.category_id;

OR

SELECT *
FROM Category, Product
WHERE Category.cat_id = Product.pro_id;

cat_id  cat_name             pro_id  pro_name       MRP       MFG_DATE    category_id
2       Stationary           1	     Parker Pen	    349.00	  2022-06-16	2
3       Furniture	           2	     Student Chair	1499.00	  2021-12-31	3
4       Food Items	         3	     Dark Chocolate	399.00	  2022-04-30	4
1       Electronics	         4	     Microwave Oven	10500.00	2022-05-15	1
1       Electronics	         5	     AC	            34500.00	2022-05-01	1

:: Additional starts here ::
You can specify column list to limit the number of columns and you can pick the columns of your choice from both tables. One special case of concern is when both tables have column with same name then in this case ambiguity (confusion) occurs such that DBMS unable to decide to fetch column from which table. To overcome this ambiguity we have to use table-name along with the column-name. To make the syntax short we can alias the table-name also.
Say we have a table 'tblOne'
C1 INT(6)
C2 VARCHAR(4)

Say we have another table 'tblTwo'
C2 VARCHAR(4)
C3 Double(4, 2)

SELECT *
FROM tblOne
INNER JOIN tblTwo
ON tblOne.C2 = tblTwo.C2; #No Error

SELECT C1, C2, C3
FROM tblOne
INNER JOIN tblTwo
ON tblOne.C2 = tblTwo.C2; #Ambuguity; multiple columns C2 are there

SELECT C1, tblOne.C2, C3
FROM tblOne
INNER JOIN tblTwo
ON tblOne.C2 = tblTwo.C2; #No Error

SELECT C1, tblTwo.C2, C3
FROM tblOne
INNER JOIN tblTwo
ON tblOne.C2 = tblTwo.C2; #No Error

SELECT C1, T1.C2, C3
FROM tblOne T1
INNER JOIN tblTwo T2
ON T1.C2 = T2.C2; #No Error

SELECT C1, T2.C2, C3
FROM tblOne T1
INNER JOIN tblTwo T2
ON T1.C2 = T2.C2; #No Error
:: Additional ends here ::

Write query to display all records from category and product table that has any matching entry including all categories. (Hint: Use Left Join)
SELECT *
FROM category
LEFT JOIN product
ON category.cat_id = product.category_id;

cat_id  cat_name             pro_id  pro_name       MRP       MFG_DATE    category_id
2	      Stationary	         1	     Parker Pen	    349.00	  2022-06-16	2
3	      Furniture	           2	     Student Chair	1499.00	  2021-12-31	3
4	      Food Items	         3	     Dark Chocolate	399.00	  2022-04-30	4
1	      Electronics	         4	     Microwave Oven	10500.00	2022-05-15	1
1	      Electronics	         5	     AC	            34500.00	2022-05-01	1
5	      House-keeping Goods  NULL    NULL           NULL      NULL        NULL

Write query to display all records from category and product table that has any matching entry including all products. (Hint: Use Right Join)
SELECT *
FROM category
RIGHT JOIN product
ON category.cat_id = product.category_id;

cat_id  cat_name             pro_id  pro_name       MRP       MFG_DATE    category_id
1	      Electronics	         4	     Microwave Oven	10500.00	2022-05-15	1
1	      Electronics	         5	     AC	            34500.00	2022-05-01	1
2	      Stationary	         1	     Parker Pen	    349.00	  2022-06-16	2
3	      Furniture	           2	     Student Chair	1499.00	  2021-12-31	3
4	      Food Items	         3	     Dark Chocolate	399.00	  2022-04-30	4
NULL	  NULL                 6       Footware       599.00    2022-05-01  NULL

Write query to find cat_name, pro_name, MRP for products such that include only those products whose price is more than 1000.00
SELECT cat_name, pro_name, MRP
FROM category
INNER JOIN product
ON category.cat_id = product.category_id
WHERE MRP > 1000.00;

::Output::
cat_name      pro_name         MRP
Furniture	    Student Chair	   1499.00
Electronics   Microwave Oven   10500.00
Electronics   AC               34500.00

Write query to apply inner join on following tables-
customer(cid, cname, dob, address)
account(acc_no, balanace, opening_date, cid)
transaction(tid, amount, transaction_date, acc_no)

SELECT C.cid, cname, A.acc_no, balanace, opening_date, transaction_date, amount
FROM customer C
INNER JOIN account A
ON C.cid = A.cid
INNER JOIN transaction T
ON T.acc_no = A.acc_no;

Create table soldier with following structure-
sol_id VARCHAR(4) PRIMARY KEY
sol_name VARCHAR(4) NOT NULL
sol_age INT
col_id VARCHAR(4) Foreign Key

INSERT INTO soldiers VALUES
('S001', 'ABC', 34, NULL),
('S002', 'BCD', 26, 'S001'),
('S003', 'CDE', 28, 'S001'),
('S004', 'DEF', 35, NULL),
('S005', 'FGH', 26, 'S004');

SELECT * FROM soldiers;
sol_id sol_name sol_age col_id
S001   ABC      34      NULL
S002   BCD      26      S001
S003   CDE      28      S001
S004   DEF      35      NULL
S005   FGH      26      S004

Write query to display soldier name along with the colonel name

Select S.sol_name "Soldier Name",
       C.sol_name "Colonel Name"
FROM soldier S
INNER JOIN soldier C
ON S.col_id = C.sol_id;

soldier name    colonel name
BCD             ABC
CDE             ABC
FGH             DEF