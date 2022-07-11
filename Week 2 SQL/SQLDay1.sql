--Might be day 2
ALTER TABLE film_table
ALTER COLUMN film_name VARCHAR(10) NOT NULL

INSERT INTO film_table
(film_name)
VALUES
('Notebook')

ALTER TABLE film_table
ADD CONSTRAINT Deafult_SciFi DEFAULT 'Sci-fi' for film_type

INSERT INTO film_table
(film_name)
VALUES
('Star Wars4')

UPDATE film_table
SET film_type = 'Clasic'
WHERE film_id = 5

DELETE FROM film_table
WHERE film_id = 4

DELETE FROM film_table 
WHERE film_id 
BETWEEN 5 AND 9












---------------------------------------------------------------------------
--practice with JACK
--foreign keys, ondelete cascade, alter
CREATE DATABASE oleg_db;
USE oleg_db;

DROP TABLE film_table;
DROP TABLE directors;

CREATE TABLE directors(
    director_id INT IDENTITY(1,1) PRIMARY KEY,
    director_name VARCHAR(20),
)

INSERT INTO directors(
    director_name
)
VALUES('Alex'),
('Bob');

CREATE TABLE film_table(
    film_id INT IDENTITY(1,1) PRIMARY KEY,
    film_name VARCHAR(10), 
    film_type VARCHAR(6),
    release_date DATE,
    -- foreign key
    director_id int FOREIGN KEY(director_id) REFERENCES directors(director_id),
    writer VARCHAR(20),
    star VARCHAR(20),
    film_lang VARCHAR(20),
    website VARCHAR(50),
    plot VARCHAR(100)
);

INSERT INTO film_table(
    film_name, film_type, release_date, director_id, writer, star, film_lang, website, plot
)
VALUES(
    'Name', 'Genre', '2021-01-01', 1 , 'Test Writer', 'Test Star', 'Test Language', 'www.testwebsite.com', 'Test Plot'  
),
('Alex', 'Good', '1990-01-01', 2 , 'Alex', 'Alex', 'English', 'www.notawebsite.com', 'Someone dies');


SELECT * FROM directors;

-- DELETE FROM film_table WHERE director_id = 2;

-- SELECT * FROM directors;

SELECT * FROM film_table;










--Day 2
USE Northwind
--Table Aliasing
--used aggregate funciton count and used column aliasing
SELECT COUNT(*) AS "Number of Employees" FROM Customers c
WHERE c.City = 'London'

SELECT * FROM Employees e
WHERE e.TitleOfCourtesy='Dr.'

SELECT * FROM Products p
WHERE p.Discontinued = 1

SELECT c.CompanyName, c.City, c.Country FROM Customers c

SP_HELP Products

SELECT ProductName, UnitPrice FROM Products
WHERE UnitsInStock > 0 AND UnitPrice > 29.99

SELECT DISTINCT Country FROM Customers
WHERE ContactTitle = 'Owner'

SELECT p.ProductName FROM Products P
WHERE p.ProductName
--LIKE 'A%'
--Like '[ACD]%'
--LIKE '__P%'
--LIKE '[^ACD]%'

SELECT * FROM Customers WHERE Region IN ('WA','SP')



---------------
SELECT p.ProductName, p.ProductID  FROM Products p
WHERE p.UnitPrice < 5.00;

SELECT COUNT(*) AS 'TOTAL ORDERS' FROM Orders
WHERE EmployeeID = 5 OR EmployeeID=7

SELECT COUNT(*) AS 'TOTAL ORDERS' FROM Orders
WHERE IN (5,7)
GROUP BY EmployeeID --per employee id get the count

SELECT c.CompanyName AS "Company Name",
CONCAT(c.City, ', ', c.Country) AS "City"
FROM Customers c

USE Northwind

SELECT CONCAT(e.FirstName,' ', e.LastName ) 
AS "Employee Name"
FROM Employees e

SELECT CompanyName AS 'Company Name', City + ',' + Country AS 'City'

SELECT DISTINCT Country AS 'Countries'
FROM Customers
WHERE Region IS NOT NULL

SELECT  od.UnitPrice, od.Quantity, od.Discount,od.Discount,
od.UnitPrice*od.Quantity AS "Gross Total",
od.Quantity*od.UnitPrice*(1-od.Discount) AS "Net Total"
FROM [Order Details] od;
----COde
SELECT * FROM products
/*STRING FUNCTIONS*/
DROP DATABASE IF EXISTS astha_db
CREATE DATABASE astha_db

USE astha_db


DROP TABLE IF EXISTS film_table

CREATE TABLE film_table(
    film_id INT IDENTITY(1,1) PRIMARY KEY,
    film_name VARCHAR(50) NOT NULL,
    film_type VARCHAR(50)
)

INSERT INTO film_table VALUES
('    Star Wars', 'Sci fi'),
('Star Trek    ', 'Sci fi')

INSERT INTO film_table VALUES
('Batman', 'Action')


INSERT INTO film_table
(film_name) VALUES
('Superman')


SELECT * FROM film_table

--STRING FUNCTIONS--
SELECT film_name, CHARINDEX('s', film_name) AS "Position of Character" FROM film_table ;

SELECT film_name, SUBSTRING(film_name, 2, 3) AS "Extracted String" FROM film_table

SELECT film_name, RIGHT(film_name, 2) AS "Extracted String" FROM film_table

SELECT film_name, LEFT(film_name, 2) AS "Extracted String" FROM film_table

SELECT film_name, RTRIM(film_name) AS "Trimmed String" FROM film_table

SELECT film_name, LTRIM(film_name) AS "Trimmed String" FROM film_table

SELECT film_name, TRIM(film_name) AS "Trimmed String" FROM film_table

SELECT film_name, REPLACE(film_name,' ','A') AS "Replaced String" FROM film_table


SELECT film_name, LEN(film_name) AS "LENGTH of String" FROM film_table

SELECT film_name, UPPER(film_name) AS "Uppercase String", LOWER(film_name) AS "Lowercase String" FROM film_table



USE Northwind


SELECT PostalCode 'Post Code',
LEFT (PostalCode, CHARINDEX(' ', PostalCode)-1) AS 'Post Code Region',
CHARINDEX('',PostalCode) AS 'Space Found', Country
FROM Customers
WHERE Country = 'UK'


SELECT DATEADD(d,5,OrderDate) AS 'Due Date',
DATEDIFF(d,OrderDate,ShippedDate) AS 'Ship Days'
FROM Orders

SELECT e.FirstName + e.LastName as 'Name'

From Employees e

Select Case 
When DATEDIFF(d,OrderDate,ShippedDate) < 10
then 'On Time'
else 'overdue'
end as 'status'
from Orders

Select case 
when DATEDIFF(d,Or)


--Day3
--Wildcards?
USE NORTHWIND

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
FROM student INNER JOIN course ON studetn.course
 = 


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
