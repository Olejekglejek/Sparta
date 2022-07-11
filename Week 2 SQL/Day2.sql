--INSERT Breakdown
--Column names are separated by commas
--Values signals the data to be inserted
--Single quotes are used for text or dates

--Variations on INSERT
--Changing the order of the columns
--If you've already created a table, the order is which you add the data doesnt have to be as the original column order as long as the values match the order you are now inserting
--Omitting column names
--You dont have to put the column names in, but the values have to be in the same order as the original columns
--Leaving some columns out
--You can leave some information out, it doesnt have to be inserted with the rest. For this you will have to specify the column names the values are going into.

--VARCHAR, CHAR and DATE all use quotes for their VALUES
--An INSERT statement including DECIMAL and INT does not use any quotes

--NULL is not nothing, does not equate to zero, isnt and empty string, a value can be NULL, but NULL neve equals NULL because NULL is an undefined value

--By using NOT NULL we can force the table not to accept empty fields for that column
CREATE TABLE film_table(
    film_name VARCHAR(10) NOT NULL,
    film_type VARCHAR(6) NOT NULL);

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

--updating table
UPDATE people
SET person_id=1
WHERE person_id=2

--remove rows
DELETE FROM people
WHERE person_id=2 

--default value
CREATE TABLE film_table(
    film_name VARCHAR(10) NOT NULL,
    film_type VARCHAR(6) NOT NULL,
    film_cost DEC(3,2) NOT NULL DEFAULT 0);

--standart practice for empty columns to contain NULL or assign a default value

USE Northwind
--Table Aliasing
--used aggregate funciton count and used column aliasing
SELECT COUNT(*) AS "Number of Employees" FROM Customers c
WHERE c.City = 'London'

--CONCAT and Column Aliasing
SELECT e.FirstName +' ' + e.LastName AS "Employment" FROM Employees e
WHERE e.TitleOfCourtesy='Dr.'

SELECT * FROM Products p
WHERE p.Discontinued = 1

SELECT COUNT(*) AS "NumberOfDiscontinuedProducts" FROM Products p
WHERE p.Discontinued =1

--TO create a valid Where clause we need to make sure each data type is formated properly
--CHAR,VARCHAR,DATE,DATETIME,TIME,BINARY - use apostrophes
--DECIMAL, NUMERIC,INT,SMALLINT,BIT - dont use apostrophes

SELECT c.CompanyName, c.City, c.Country FROM Customers c
WHERE c.Region='BC'

SP_HELP Products

SELECT TOP 100 CompanyName, City FROM Customers
WHERE Country = 'France'

--<> OR != - Not equal to
--< > <= >= 

SELECT ProductName, UnitPrice FROM Products
WHERE CategoryID = 1 AND Discontinued = '0'

SELECT ProductName, UnitPrice FROM Products
WHERE UnitsInStock > 0 AND UnitPrice > 29.99

SELECT ProductName, UnitPrice FROM Products
WHERE UnitsInStock > 0 OR UnitPrice > 29.99

--remove duplicates
SELECT DISTINCT Country FROM Customers
WHERE ContactTitle = 'Owner'

--WILDCARDS - substitute any character in a string with LIKE operator
--%-substitute from zero or more charac
--_ - a single charac
--[charlist] - sets and ranges of characters to match Ex. LIKE [ABC]% - This will bring back anything starting with any of those letters
--[^charlist] - sets and ranges of characters that dont match Ex. LIKE [^ABC]% - this will bring back anything that does not start with those letters

SELECT p.ProductName FROM Products P
WHERE p.ProductName
LIKE 'A%'

SELECT p.ProductName FROM Products P
WHERE p.ProductName
Like '[ACD]%'

SELECT p.ProductName FROM Products P
WHERE p.ProductName
LIKE '__P%'

SELECT p.ProductName FROM Products P
WHERE p.ProductName
LIKE '[^ACD]%'

SELECT ProductName
FROM Products
WHERE ProductName LIKE 'Ch%'

SELECT * FROM Customers WHERE Region LIKE '_A'

--in 2 specific regions
SELECT * FROM Customers WHERE Region IN ('WA','SP')

SELECT * FROM EmployeeTerritories
WHERE TerritoryID BETWEEN 06800 AND 09999

SELECT p.ProductName, p.ProductID  FROM Products p
WHERE p.UnitPrice < 5.00;

SELECT * FROM Categories c WHERE c.CategoryName LIKE '[BS]%'

SELECT COUNT(*) AS 'TOTAL ORDERS from Employee 5 and 7' FROM Orders
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
FROM Customers
WHERE Region IS NULL

SELECT DISTINCT Country AS 'Countries'
FROM Customers
WHERE Region IS NOT NULL

--Arithmetic Operators - + - * / %

SELECT  od.UnitPrice, od.Quantity, od.Discount,od.Discount,
od.UnitPrice*od.Quantity AS "Gross Total",
od.Quantity*od.UnitPrice*(1-od.Discount) AS "Net Total"
FROM [Order Details] od;

SELECT UnitPrice, Quantity, Discount, UnitPrice * Quantity AS 'Gross Total' 
FROM [Order Details]
ORDER BY 'Gross Total' DESC

SELECT TOP 2 UnitPrice, Quantity, Discount, UnitPrice * Quantity AS 'Gross Total',
(UnitPrice*Quantity) * (1 - Discount) AS 'Total Price'
FROM [Order Details]
ORDER BY 'TOtal Price' DESC

--STRING funcitons - manipulate text in SELECT clause
--SUBSTRING - SUBSTRING(expression, start, length); SUBSTRING(name, 1,1)
--CHARINDEX('a', 'text') - to search for a string ex. find 'a' in a column called 'text'
--LEFT or RIGHT - LEFT(name, 5) - for the first (or last) 5 characters
--LTRIM or RTRIM - used to remove spaces at the beggining or end of a string
--LEN - LEN(name)  -for the length of the name
--REPLACE - REPLACE(name, ' ','_') - to replace spaces with underscores
--UPPER or LOWER - UPPER(name) - to convert to all upper(lower) case

----COde from ASTHA
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
--end of astha code


USE Northwind


SELECT PostalCode 'Post Code',
LEFT (PostalCode, CHARINDEX(' ', PostalCode)-1) AS 'Post Code Region',
CHARINDEX('',PostalCode) AS 'Space Found', Country
FROM Customers
WHERE Country = 'UK'


SELECT p.ProductName
FROM Products p
WHERE p.ProductName LIKE '%' '%'

--SQL SELECT statement logical syntax sequence
-- SELECT, DISTINT, FROM, WHERE, GROUP BY, HAVING, ORDER BY

--SQL SELECT statement - Processing Sequence
--FROM, WHERE, GROUP BY, HAVING, SELECT, DISTINCT, ORDER BY

--DATE functions
--GETDATE - SELECT GETDATE() - to return the current date and time
--SYSDATETIME - SELECT SYSDATETIME() - to return the date and time of the computer being used
--DATEADD(d,5,OrderDate) AS 'Due Date' - to add 5 days
--DATEDIFF(d, OrderDate, ShippedDate) AS 'Ship Time' - to calculate difference between dates
--YEAR - SELECT YEAR(OrderDate) AS 'Order Year' - to extract the year from a date
--MONTH - SELECT MONTH(OrderDate) AS 'Order Month' - to extract the month from a table
--DAY - SELECT DAY(OrderDate) AS 'Order Day' - to extract the day from a date

SELECT DATEADD(d,5,OrderDate) AS 'Due Date',
DATEDIFF(d,OrderDate,ShippedDate) AS 'Ship Days'
FROM Orders



SELECT e.FirstName + ' '+ e.LastName AS 'Name',
DATEDIFF(YY, e.BirthDate, GETDATE()) AS 'Age'
FROM Employees e

SELECT e.FirstName + ' '+ e.LastName AS 'Employee Name',
CEILING(DATEDIFF(d, e.BirthDate, GETDATE())/365.25) AS "AGE"
FROM Employee e

Select Case 
When DATEDIFF(d,OrderDate,ShippedDate) < 10
then 'On Time'
else 'overdue'
end as 'status'
from Orders

Select case 
when DATEDIFF(d,OrderDate, ShippedDate)<10 THEN 'On Time'
ELSE 'Overdue'
END AS 'Status'
FROM Orders

SELECT CASE
WHEN DATEDIFF(d, e.BirthDate, GETDATE())/365.25 > 65 THEN 'Retired'
WHEN DATEDIFF(d, e.BirthDate, GETDATE())/365.25 > 60 THEN 'Retirement Due'
ELSE 'More than 5 years to go'
END AS 'Retirement Status as Follows'
FROM Employees e

