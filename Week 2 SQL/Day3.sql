USE NORTHWIND

--Aggregate functions - can be used to calculate totals usually in conjuction with the GROUP BY clause
--SUM(OrderTotal) - for the grand total of a column for all rows selected
--AVG(UnitPrice) - for the average of a column for all rows selected
--MIN(UnitPrice) - for the largest value in a column for all rows selected
--COUNT(*) - for the number of NOT NULL rows selected. If * is used then all rows are counted

--Aggregates can be used without a GROUP BY
--With no GROUP BY you just get one row (total) as a resul
--If you use an aggregate function ...
SELECT SUM(UnitsOnOrder) AS "Total On Order",
AVG(UnitsOnOrder) AS "Avg On Order",
MIN(UnitsOnOrder) AS "Min On Order",
MAX(UnitsOnOrder) AS "Max On Order"
FROM Products

SELECT SupplierID,
SUM(UnitsOnOrder) AS "Total On Order",
AVG(UnitsOnOrder) AS "Avg On Order",
MAX(UnitsOnOrder) AS "Max On Order"
FROM Products
GROUP BY SupplierID


SELECT TOP 1 CategoryID,
AVG(ReorderLevel) AS "Avg On Reorder"
FROM Products
GROUP BY CategoryID ORDER BY AVG(ReorderLevel) DESC

SELECT SupplierID,
SUM(UnitsOnOrder) AS "Total On Order",
AVG(UnitsOnOrder) AS "Avg On Order"
FROM Products
GROUP BY SupplierID
HAVING AVG (UnitsOnOrder) > 5

--JOIN is a sql keyword used to combine matched rows from two or more tables
--It allows you to create a list of combined rows of matching data from different tables


-- INNER JOIN(simple join) - in both tables
--LEFT JOIN or LEFT OUTER JOIN - return all rows from the left table and the matched ones

SELECT SupplierID,
SUM(UnitsOnOrder) AS 'Total On Order',
AVG(UnitsOnOrder) AS 'Avg On Order'
FROM Products
GROUP BY SupplierID
HAVING AVG(UnitsOnOrder) > 5

--JOIN is an sQL keyword used to combine mathced rows from two of more tables
--It allows you to create a list of combined rows of matching data from different tables
--INNER LEFT RIGHT
------------------------------------------------------
CREATE DATABASE astha_db
USE astha_db

DROP TABLE IF EXISTS course
CREATE TABLE course  
(
    c_id INT IDENTITY(1,1) PRIMARY KEY,
    course_name VARCHAR(30)
)

DROP TABLE IF EXISTS student
CREATE TABLE student
(
    st_id INT IDENTITY(1,1),
    student_name VARCHAR(30),
    course_id INT,
    FOREIGN KEY (course_id) REFERENCES course(c_id) ON DELETE CASCADE

)


INSERT INTO course
(
    course_name
)
VALUES
(
    'Business' 
),
(
    'Test'
),
(
    'Agile'
),
(
    'Web'
),
(
    'Dev'
)

INSERT INTO student
(
   student_name, course_id 
)
VALUES
(
    'Lee', 1
),
(
    'Barry', 1
),
(
    'David', 2
),
(
    'Tim',5
)


INSERT INTO student
(
   student_name
)
VALUES
(
    'Nicole'   
)

SELECT * FROM student
SELECT * FROM course

/*INNER JOIN-matched rows*/
--DOD-->JOIN SYNTAX-->1. Applying the join keyword based on the question
                -->2. Understanding which table to put in the left and which at the right
                -->3. Applying the ON keyword to define the primary key and foreign key relationship

 
SELECT * FROM student s INNER JOIN course c
ON s.course_id=c.c_id --ON defines primary key and foeign key relationship

/*OUTER JOINS-LEFT JOIN, RIGHT JOIN, FULL JOIN*/
/*LEFT JOIN-All the rows from the left table and only the matching rows from the right table*/

SELECT * FROM student s LEFT JOIN course c   
ON s.course_id=c.c_id

SELECT * FROM student s RIGHT JOIN  course c
ON s.course_id=c.c_id

SELECT * FROM student s FULL JOIN course c   
ON s.course_id=c.c_id


SELECT * FROM Products

-------
SELECT student.name, course.name
FROM student INNER JOIN course ON studetn.course = course.id 


SELECT * FROM student s, course c WHERE s.course_id=c.c_id; 

SELECT *
FROM Orders o INNER JOIN [Order Details] od
ON o.OrderID=od.OrderID
INNER JOIN products.p
ON od.ProductID=p.ProductID
INNER JOIN Categories.c
ON p.CategoryID = c.CategoryID

SELECT ProductName, UnitPrice, CompanyName AS "Supplier",
CategoryName AS "Category"
FROM Products p
INNER JOIN Suppliers s ON p.SupplierID = s.SupplierID
INNER JOIN Categories c ON p.CategoryID = c.CategoryID

SELECT c.CompanyName, CONCAT(e.FirstName," ", e.LastName), o.OrderID, o.OrderDate, o.Freight  
FROM Orders o 
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
INNER JOIN Employees e ON o.EmployeeID = e.EmployeeID

--Exercises
SELECT DISTINCT s.CompanyName, AVG(p.UnitsOnOrder) AS "AVG Units on Order" 
FROM Products p INNER JOIN Suppliers s
ON s.SupplierID = p.SupplierID
GROUP BY s.CompanyName

SELECT sup.SupplierID, sup.CompanyName, AVG(prod.UnitsOnOrder) AS "AVG Units on Order"
FROM Products prod INNER JOIN Suppliers sup
ON sup.SupplierID = prod.SupplierID
GROUP BY sup.SupplierID, sup.CompanyName;

SELECT CompanyName AS "Customer"
FROM Customers
WHERE CustomerID NOT IN
(SELECT CustomerID FROM Orders)

SELECT c.CompanyName AS "Customer"
FROM Customers c FULL JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.CustomerID IS NULL; 

SELECT c.CompanyName AS "Customer"
FROM Customers c FULL JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.CustomerID IS NULL;
 
SELECT c.CompanyName AS "Customer"
FROM Customers c LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.CustomerID IS NULL;

SELECT c.CompanyName AS "Customer"
FROM Orders o RIGHT JOIN Customers c ON c.CustomerID = o.CustomerID
WHERE o.CustomerID IS NULL;

SELECT OrderID, ProductID, UnitPrice, Quantity, Discount,
(SELECT MAX(UnitPrice)FROM [Order Details]od)AS"Max Price"
FROM [Order Details]

SELECT od.ProductID, sq1.totalamt AS "Total Sold for this Product",
UnitPrice, UnitPrice/totalamt*100 AS "% of Total"
FROM [Order Details] od
INNER JOIN 
(SELECT ProductID, SUM(UnitPrice*Quantity) AS totalamt
FROM [Order Details]
GROUP BY ProductID) sq1 ON sq1.ProductID = od.ProductID

SELECT OrderID, ProductID, UnitPrice, Quantity, Discount
FROM [Order Details] od
WHERE od.ProductID IN
(SELECT ProductID FROM Products WHERE Discontinued = 1);
--Or NOT IN and Discontinued = 0

SELECT od.OrderID, p.ProductID, od.UnitPrice, od.Quantity, od.Discount FROM [Order Details] od
INNER JOIN [Products] p ON p.ProductID = od.ProductID 
WHERE p.Discontinued = 1

SELECT EmployeeID AS "Employee/Supplier"
FROM Employees
UNION ALL
SELECT SupplierID
FROM Suppliers

--Subquery is a nested query inside another SELECT statement
--This allows you to take the results of one querry and apply them to another querry
--A subquerry may accur in any of the following clauses: 
--SELECT(nested subquery - returns single value only)
--FROM (inline view)
--WHERE (nested subquery) - most common way
