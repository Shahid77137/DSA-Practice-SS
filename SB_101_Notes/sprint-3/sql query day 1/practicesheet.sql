Practice Sheet-1
Q.1 Write SQL query to create a table ‘book’
Bookid	     int(5)	      primary key
Title	       varchar(50)	not null
Publisher    varchar(50)	not null
isbn_no	     varchar(10)	unique
Price	       decimal(5,2)	default 0.0
Pdate	       date	        not null

Q.2 Write SQL query to display structure of table book 

Q.3 Write SQL query to add a new column at the end of table with following details
discount double(4,2)

Q.4 Write SQL query to change data type of isbn_no to char(10) also apply NOT NULL constraint

Q.5 Write SQL query to insert following record in the table book
bookid title	             publisher  isbn_no   pdate	       price	 discount	
1	     FIT Book	           Ratna	    13478690  01-Jul-2018  400.00	 5.0	
2	     Physics text	       TMH	      28476292  22-Jan-2017  312.75	 7.5	
3	     Accountancy Paper	 Pearson	  34868686  03-Aug-2005  324.28	 12.0	
4	     All in one	         Genius	    92471462  01-Jan-2011  250.00	 null	
5	     Color book	         Ashirwad	  36362978  31-Dec-2015  0.00	   0.0	
6	     First Flight	       TMH	      32978462  05-Jun-2018  44.0	   0.0	

Q.6 Write SQL query to display all records of table book 
Q.7 Write SQL query to display title, price and discount of all books 
Q.8 Write SQL query to display distinct values of column discount from table book
Q.9 Write SQL query to display all records of book such that title should be displayed as name and pdate as publishing_date
Q.10	Write SQL query to display all records of table book whose price is more than 300
Q.11	Write SQL query to display all records of table book whose price is less than 380
Q.12	Write SQL query to display all records of table book whose title is color book
Q.13	Write SQL query to display all records of table book whose isbn_no is not equal to 13478690
Q.14	Write SQL query to display all records of books whose discount is more than or equal to 5.0
Q.15	Write SQL query to display all records of books whose discount is less than or equal to 10.0
Q.16	Write SQL query to display title, publisher and price of all books whose price is null
Q.17	Write SQL query to display bookid, isbn_no, pdate of all books whose price is not null
Q.18	Write SQL query to display bookid, title, price for all books whose pdate is from 31-Dec-2015 to 01-Jul-2018
Q.19	Write SQL query to display all books whose price is not in the range of 250 to 324.28
Q.20	Write SQL query to display all books whose publisher has letter ‘i’ anywhere
Q.21	Write SQL query to display all books whose publisher has last letter ‘k’
Q.22	Write SQL query to display all books whose publisher has second last letter ‘i’
Q.23	Write SQL query to display title, “final price” (payable price after discount) for all books whose discount is not null
Q.24	Write SQL query to display all books whose price is more than 250 and discount is not null
Q.25	Write SQL query to display publisher, pdate of all books whose title starts with letter ‘a’ or pdate is before 01-Jan-2017
Q.26	Write SQL query to display title, publisher, pdate of all books whose pdate is 01-Jul-2018 or 22-Jan-2017 or 31-Dec-2015
Q.27	Write SQL query to display bookid, title, isbn_no, pdate of all books whose pdate is neither 05-Jun-2018 not 22-Jan-2017
Q.28	Write SQL query to display details of all books in the ascending order of their title
Q.29	Write SQL query to display details of all books in the descending order of their price
Q.30	Write SQL query to increase price of every book by 10% whose price is less than 300
Q.31	Write SQL query to delete all records from table book whose price is 0 to 300
Q.32	Write SQL query to drop column isbn_no from table book
Q.33	Write SQL query to drop table book

-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

Table-name: employee (common to Questions on GROUP BY, HAVING clause and Questions on Subquery)
e_id    name    gender    salary    department    d_o_j
1       Surbhi  female    15000     finance       2008-05-31
2       Ajay    male      27500     finance       2010-04-25
3       Dheeraj male      45000     development   2014-06-21
4       Shefali female    22000     testing       2005-01-01
5       Sonali  female    37000     marketing     2007-08-26
6       Jayesh  male      26000     development   2009-01-25

Questions on GROUP BY, HAVING clause
Q.1 Write a query to find total number of distinct department in the table employee
Q.2 Write a query to display Maximum Salary among all employee as “MAX_SAL”, Minimum Salary among all employee as “MIN_SAL”, Total Salary of all employees employee as “TOTAL_SAL”
Q.3 Write a query to find sum of salaries gender wise
Q.4 Write a query to find employee’s count gender wise such that you need to count only those employee whose d_o_j is after ‘2008-01-01’.
Q.5 Write a query to find maximum salaries department wise such that display salary of only those departments whose average salary is more than 22500.
Q.6 Write a query to find minimum salary department wise for all employees department wise such that employee name must contain letter ‘a’ anywhere; and maximum salary of the department must be more than 23000, display the results in the descending order of minimum salaries.
Say we have added one more entry in the table with the following details
e_id: 7 name: Suhani gender: female salary: null department: finance d_o_j: 2013-05-02
Q.7 What will be the output of following queries
(a) SELECT COUNT(*), COUNT(salary) FROM employee;
(b) SELECT AVG(salary) FROM employee;
Q.8 Spot the error in the following queries (If any). Write “no error” in case the query is correct
(a) SELECT department, MAX(salary) FROM employee GROUP BY gender
(b) SELECT department, SUM(salary) FROM employee GROUP BY (department, gender)
(c) SELECT AVG(salary) FROM employee WHERE salary = NULL GROUP BY gender;
(d) SELECT department as dept, AVG(salary) FROM employee GROUP BY dept HAVING MAX(sal) < 40000;
(e) SELECT gender, MAX(salary) AS “MAX_SAL” FROM employee GROUP BY gender ORDER BY MAX_SAL DESC
(f) SELECT gender, MIN(salary) AS “MIN_SAL” FROM employee HAVING gender = “male”;
(g) SELECT gender, MIN(salary) AS “MIN_SAL” FROM employee GROUP BY gender HAVING gender = “male”;
(h) SELECT gender, MIN(salary) AS “MIN_SAL” FROM employee GROUP BY gender HAVING SUM(salary) >= 74000;
(i) SELECT gender, MIN(salary) AS “MIN_SAL” FROM employee GROUP BY gender HAVING email LIKE “%@hw.com”;
(j) SELECT department, AVG(salary) AS “MIN_SAL” FROM employee ORDER BY MIN_SAL HAVING gender = “male” WHERE gender = ‘male’;

-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

Table-name: student
id      roll_no     name      dep_id    xii_per        state
1       09EAYCS001  Abhinav   1         69.68          Bihar
2       09EAYEC009  Ajay      2         66.63          Rajasthan
3       10EJEIT007  Karan     3         59.65          Uttar Pradesh
4       10ESCCS056  Zaqir     1         56.29          Rajasthan
5       09EAYXX010  Harpreet  null      56.89          Rajasthan

Table-name: department
id      name
1       Computer Science
2       Electronics
3       Information Technology
4       Mechanical Engineering

Questions on Joins
Q.1 Write query to find the id of student, roll_no, name of department for every student which belong to any department
Q.2 Write query to find all details for every student which belong to department ‘Computer Science’
Q.3 Write query to find all details for every student such that the student may or may not belong to a department
Q.4 Write query to find all details for every department such that the department may or may not have students
Q.5 What will the degree and cardinality of the result generated by applying the CROSS JOIN operation on student and department table.
Q.6 Which of the following syntax is better and why?
(a) SELECT * FROM left table INNER JOIN Right table ON left-table.col-name = right-table.col-name;
(b) SELECT * FROM left table, Right table WHERE left-table.col-name = right-table.col-name;

Q.7 Consider the table soldiers
sol_id sol_name sol_age col_id
S001   ABC      34      NULL
S002   BCD      26      S001
S003   CDE      28      S001
S004   DEF      35      NULL
S005   FGH      26      S004
Write a query to display name of all soldiers who has same colonel such that the result should contain only those soldiers who has colonel.

-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

Use the table employee mentioned in Questions on GROUP BY, HAVING clause

Questions on Subquery
Q.1 Write a query to find name, gender and department of all employees whose salary is more than average salary of all employees
Q.2 Write a query to display gender and sum of salary of all employees gender wise such that display only those genders whose sum of salary is 50% or more of total salaries of department development.
Q.3 Write a query to insert a new record in the employee table with following details
e_id: 7 name: Suhani gender: female department: finance d_o_j: 2013-05-02 salary: It should be 5000 less than then average salary of all employee
Q.4 Write a query list all details of employees whose salary is same as the salary of any employee of finance department
Q.5 Write a query list all details of employees whose salary is more than the salary of any employee of development department
Q.6 Write a query list all details of employees whose salary is less than the 1.2 times of salary of all employee of development department
Q.7 Spot the error in the following queries (If any). Write “no error” in case the query is correct
(a) SELECT T.name , T.gender FROM (
SELECT name as emp_name, gender as sex FROM employee
) T
(b) SELECT * FROM employee WHERE salary > AVG(salary)
(c) SELECT round(Salary * 0.0001) FROM employee WHERE department IN (‘testing’, ‘marketing’);

-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-