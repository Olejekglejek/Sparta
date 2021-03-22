USE Northwind

--1.1Write a query that lists all Customers in either Paris or London. 
--Include Customer ID, Company Name and all address fields. 
SELECT * FROM Customers
WHERE City = 'Paris' OR City = 'London'

--1.2List all products stored in bottles.
SELECT ProductName FROM Products
WHERE QuantityPerUnit
LIKE '%bottle%'

--1.3Repeat question above, but add in the Supplier Name and Country. 
SELECT p.ProductName, s.CompanyName, s.Country
FROM Products p
INNER JOIN Suppliers s ON p.SupplierID = s.SupplierID
WHERE p.QuantityPerUnit LIKE '%bottle%'

--1.4Write an SQL Statement that shows how many products there are 
--in each category. Include Category Name in result set and list the
-- highest number first. 
SELECT c.CategoryName, COUNT(p.ProductID) AS "Products"
FROM Products p
INNER JOIN Categories c ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryName
ORDER BY [Products] DESC

--1.5 List all UK employees using concatenation to join their title of 
--courtesy, first name and last name together. Also include their city of 
--residence. 
SELECT CONCAT(e.TitleOfCourtesy,' ',e.FirstName,' ',e.LastName,' ',e.City) AS 'UK Employees'  
FROM Employees e
WHERE e.Country = 'UK'

--1.6List Sales Totals for all Sales Regions (via the Territories table 
--using 4 joins) with a Sales Total greater than 1,000,000. Use rounding 
--or FORMAT to present the numbers.  
SELECT * FROM Region

SELECT SUM(od.UnitPrice * od.Quantity) AS "Total Sales", r.RegionDescription
FROM [Order Details] od
INNER JOIN Orders o ON o.OrderID = od.OrderID
INNER JOIN EmployeeTerritories et ON et.EmployeeID = o.EmployeeID
INNER JOIN Territories t ON t.TerritoryID = et.TerritoryID
INNER JOIN Region r ON r.RegionID = t.RegionID
GROUP BY r.RegionDescription
HAVING ROUND(SUM(od.UnitPrice * od.Quantity),2)  > 1000000

--1.7Count how many Orders have a Freight amount greater than 
--100.00 and either USA or UK as Ship Country. 
SELECT Count(o.orderID) AS "Frieght Greater than 100.00"
FROM Orders o
WHERE o.Freight > 100.00 AND o.ShipCountry IN ('UK', 'USA')

--1.8Write an SQL Statement to identify the Order Number of the 
--Order with the highest amount(value) of discount applied to that order.
SELECT TOP 1 od.Discount AS 'Highest Discount', od.OrderID AS 'With this OrderNumber'
FROM [Order Details] od
ORDER BY od.Discount DESC

SELECT OrderID AS 'Order ID', 
       FORMAT((UnitPrice * Quantity) * Discount,'C') AS 'Discount Amount'
    FROM [Order Details]
    ORDER BY [Discount Amount] DESC;

--3.1  List all Employees from the Employees table and who they report to. 
--No Excel required. Please mention the Employee Names and the Report 
--To names. 
USE Northwind

SELECT e.FirstName + ' ' + e.LastName AS "Employee Name",
		b.FirstName + ' ' + b.LastName AS "Reports To"
	FROM Employees e 
	LEFT JOIN Employees b ON e.ReportsTo=b.EmployeeID
	ORDER BY "Reports To","Employee Name";

--3.2List all Suppliers with total sales over $10,000 in the Order Details 
--table. Include the Company Name from the Suppliers Table and present as 
--a bar chart
-- total of order - discount of order
SELECT s.CompanyName, ROUND(SUM((od.UnitPrice * od.Quantity) - (od.UnitPrice * od.Discount * od.Quantity)), 2) AS "Total Sales" 
FROM Suppliers s
INNER JOIN Products p ON s.SupplierID = p.SupplierID
INNER JOIN [Order Details] od ON p.ProductID = od.ProductID 
GROUP BY s.CompanyName
HAVING SUM((od.UnitPrice * od.Quantity) - (od.UnitPrice * od.Discount * od.Quantity)) > 10000 
ORDER BY SUM((od.UnitPrice * od.Quantity) - (od.UnitPrice * od.Discount * od.Quantity)) DESC

--3.3List the Top 10 Customers YTD for the latest year in the Orders file. 
--Based on total value of orders shipped.
USE Northwind

SELECT TOP 10 c.CustomerID AS "Customer ID", c.CompanyName As "Company",
--format in the currency format
FORMAT(SUM(UnitPrice * Quantity * (1-Discount)),'C') AS "YearToDate Sales"
FROM Customers c
 		INNER JOIN Orders o ON o.CustomerID=c.CustomerID
 		INNER JOIN [Order Details] od ON od.OrderID=o.OrderID
	WHERE YEAR(OrderDate)=(SELECT MAX(YEAR(OrderDate)) From Orders)
AND o.ShippedDate IS NOT NULL
	GROUP BY c.CustomerID, c.CompanyName
 	ORDER BY SUM(UnitPrice * Quantity * (1-Discount)) DESC;


--3.4 Plot the Average Ship Time by month for all data in the Orders Table 
--using a line chart as below.
SELECT MONTH(OrderDate) Month, YEAR(OrderDate) Year, 
AVG(CAST(DATEDIFF(d, OrderDate, ShippedDate) As DECIMAL(10,2))) As ShipTime
	FROM orders 
	WHERE ShippedDate IS NOT NULL
	GROUP BY YEAR(OrderDate),MONTH(OrderDate)
	ORDER BY Year ASC, Month ASC
