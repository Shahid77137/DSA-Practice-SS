Questions on GROUP BY, HAVING clause
Q.1 Write a query to find total number of distinct department in the table employee
A.1 SELECT COUNT(DISTINCT(department)) FROM employee;

Q.2 Write a query to display Maximum Salary among all employee as “MAX_SAL”, Minimum Salary among all employee as “MIN_SAL”, Total Salary of all employees employee as “TOTAL_SAL”
A.2 SELECT MAX(sal) AS “MAX_SAL”, Min(sal) AS MIN_SAL ,SUM(sal) as Total_salary from employee;

Q.3 Write a query to find sum of salaries gender wise
A.3 SELECT gender, SUM(salary) FROM employee GROUP BY gender;

Q.4 Write a query to find employee’s count gender wise such that you need to count only those employee whose d_o_j is after ‘2008-01-01’.
A.4 SELECT gender, COUNT(*) FROM employee WHERE doj>'2008-01-01' GROUP BY gender;

Q.5 Write a query to find maximum salaries department wise such that display salary of only those departments whose average salary is more than 22500.
A.5 SELLECT department, MAX(salary) FROM employee GROUP BY department HAVING AVG(salary) > 22500

Q.6 Write a query to find minimum salary department wise for all employees department wise such that employee name must contain letter ‘a’ anywhere; and maximum salary of the department must be more than 23000, display the results in the descending order of minimum salaries.
A.6 SELECT department, MIN(Salary) AS MIN_SAL FROM employee WHERE name LIKE ‘%a%’ GROUP BY department HAVING MAX(salary) > 23000 ORDER BY MIN_SAL DESC;

Say we have added one more entry in the table with the following details
e_id: 7 name: Suhani gender: female salary: null department: finance d_o_j: 2013-05-02
Q.7 What will be the output of following queries
(a) SELECT COUNT(*), COUNT(salary) FROM employee;
COUNT(*) COUNT(salary)
   7         6
(b) SELECT AVG(salary) FROM employee;
AVG(salary)
28750

Q.8 Spot the error in the following queries (If any). Write “no error” in case the query is correct
(a) SELECT department, MAX(salary) FROM employee GROUP BY gender
The query has error because all non-aggregate columns of the select clause must be part of the group by clause. Here department is non-aggregate column and sal is aggregate column so department column must be used in the GROUP BY
::Correct Version::
SELECT department, MAX(salary) FROM employee GROUP BY department;


(b) SELECT department, SUM(salary) FROM employee GROUP BY (department, gender)
No error because group by clause can have columns other than the non-aggregate columns mentioned in the select clause.

(c) SELECT AVG(salary) FROM employee WHERE salary = NULL GROUP BY gender;
Query has error because NULL value cannot be compared using = != operator for comparing with NULL use IS NULL or IS NOT NULL.
::Correct Version::
SELECT AVG(salary) FROM employee WHERE salary IS NULL GROUP BY gender;
Tip: The columns used in the GROUP BY clause may ot may not be in SELECT clause.

(d) SELECT department as dept, AVG(salary) FROM employee GROUP BY dept HAVING MAX(sal) < 40000;
Query has error because alias cannot be used in the GROUP BY clause. GROUP By clause is executed before the SELECT clause so aliased names are not available in the GROUP BY. Use original column-names
::Correct Version::
SELECT department as dept, AVG(salary) FROM employee GROUP BY department HAVING MAX(sal) < 40000;

(e) SELECT gender, MAX(salary) AS “MAX_SAL” FROM employee GROUP BY gender ORDER BY MAX_SAL DESC
No error because aliased column names are available to ORDER BY clause because ORDER BY is executed after the SELECT clause

(f) SELECT gender, MIN(salary) AS “MIN_SAL” FROM employee HAVING gender = “male”;
Query has error because HAVING cannot be written without GROUP BY and if the select clause contains the aggregate and non-aggregate column then using GROUP BY in compulsory
::Multiple Corrected Version::
- SELECT gender FROM employee WHERE gender = “male”;
- SELECT MIN(salary) AS “MIN_SAL” FROM employee WHERE gender = “male”;
- SELECT gender, MIN(salary) AS “MIN_SAL” FROM employee GROUP BY gender HAVING gender = “male”;

(g) SELECT gender, MIN(salary) AS “MIN_SAL” FROM employee GROUP BY gender HAVING gender = “male”;
No error

(h) SELECT gender, MIN(salary) AS “MIN_SAL” FROM employee GROUP BY gender HAVING SUM(salary) >= 74000;
No error

(i) SELECT gender, MIN(salary) AS “MIN_SAL” FROM employee GROUP BY gender HAVING email LIKE “%@hw.com”;
Using column other that what you have used in GROUP BY is not allowed for HAVING clause
::Corrected Version:;
- SELECT gender, MIN(salary) AS “MIN_SAL” FROM employee GROUP BY gender;
- SELECT gender, MIN(salary) AS “MIN_SAL” FROM employee GROUP BY gender HAVING gender = “male”;

(j) SELECT department, AVG(salary) AS “MIN_SAL” FROM employee ORDER BY MIN_SAL HAVING gender = “male” WHERE gender = ‘male’;
Order of Query Writing is Select-From-Where-Group by-Having-Order by and the above query is not in this sequence
Having is written in the query without GROUP BY which is not okay
::Corrected Version::
- SELECT department, AVG(salary) AS “MIN_SAL” FROM employee WHERE gender = ‘male’ ORDER BY MIN_SAL ;

-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

Questions on Joins
Q.1 Write query to find the id of student, roll_no, name of department for every student which belong to any department
A.1 SELECT S.id, roll_no, d.name FROM student S INNER JOIN department D ON S.dep_id = D.id

Q.2 Write query to find all details for every student which belong to department ‘Computer Science’
A.2 SELECT S.id, roll_no, d.name FROM student S INNER JOIN department D ON S.dep_id = D.id AND d.id = 1

Q.3 Write query to find all details for every student such that the student may or may not belong to a department
A.3 SELECT * FROM department D RIGHT JOIN student S ON D.id=S.dep_id;

Q.4 Write query to find all details for every department such that the department may or may not have students
A.4 SELECT * FROM department D LEFT JOIN student S ON D.id=S.dep_id;

Q.5 What will the degree and cardinality of the result generated by applying the CROSS JOIN operation on student and department table.
A.5 degree: 8 cardinality: 20

Q.6 Which of the following syntax is better and why?
(a) SELECT * FROM left table INNER JOIN Right table ON left-table.col-name = right-table.col-name;
(b) SELECT * FROM left table, Right table WHERE left-table.col-name = right-table.col-name;
A.6 The syntax (a) is better because in syntax (b) cross join will be performed first and then where clause will filter the data so overall process is time consuming.

Q.7 Consider the table soldiers
sol_id sol_name sol_age col_id
S001   ABC      34      NULL
S002   BCD      26      S001
S003   CDE      28      S001
S004   DEF      35      NULL
S005   FGH      26      S004
Write a query to display name of all soldiers who has same colonel such that the result should contain only those soldiers who has colonel.
A.7 SELECT S1.sol_name FROM soldiers S1 INNER JOIN soldiers S2 ON S1.col_id = s2.col_id AND S1.col_id IS NOT NULL AND S1.sol_id != s2.sol_id;

-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

Questions on Subquery
Q.1 Write a query to find name, gender and department of all employees whose salary is more than average salary of all employees
A.1 SELECT name, gender, department
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);


Q.2 Write a query to display gender and sum of salary of all employees gender wise such that display only those genders whose sum of salary is 50% or more of total salaries of department development.
A.2 SELECT gender, SUM(salary)
FROM employee
GROUP BY gender
HAVING SUM(salary) >= (SELECT 0.5 * SUM(salary) FROM employee WHERE department = ‘development’);

Q.3 Write a query to insert a new record in the employee table with following details
e_id: 7 name: Suhani gender: female department: finance d_o_j: 2013-05-02 salary: It should be 5000 less than then average salary of all employee
A.3 INSERT INTO employee
VALUES
(4, ‘Suhani’, ‘female’, (SELECT (AVG(salary) – 5000) FROM employee E1) , ‘finance’, ‘2013-05-02’);

Q.4 Write a query list all details of employees whose salary is same as the salary of any employee of finance department
A.4 SELECT *
FROM employee WHERE salary IN(
	SELECT salary
	FROM employee WHERE department ="finance"
);

Q.5 Write a query list all details of employees whose salary is more than the salary of any employee of development department
A.5 SELECT *
FROM employee
Where salary > ANY (
	Select salary FROM employee Where department = 'development'
);

Q.6 Write a query list all details of employees whose salary is less than the 1.2 times of salary of all employee of development department
A.6 SELECT *
FROM employee
Where salary < ALL (
	Select salary * 1.2 FROM employee Where department = 'development'
);

Q.7 Spot the error in the following queries (If any). Write “no error” in case the query is correct
(a) SELECT T.name , T.gender FROM (
SELECT name as emp_name, gender as sex FROM employee
) T

A. Error because if aliased names are in original query then you cannot use original names in outer query if nested query is a select statement
Correct version:
SELECT T. emp_name , T.sex FROM (
SELECT name as emp_name, gender as sex FROM employee
) T

(b) SELECT * FROM employee WHERE salary > AVG(salary)
Error because you cannot use aggregate function with WHERE clause; yet you can use with subquery for WHERE clause
Correct version:
SELECT * FROM employee WHERE salary > (SELECT AVG(salary) FROM employee);

(c) SELECT round(Salary * 0.0001) FROM employee WHERE department IN (‘testing’, ‘marketing’);
round(Salary * 0.0001)
2
4
Explanation
22000 * 0.0001 => 22000 * 1/10000 => 2.2 ...
ROUND(2.2) -> 2
37000 * 0.0001 => 37000 * 1/10000 => 3.7 ...
ROUND(3.7) -> 4

-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-