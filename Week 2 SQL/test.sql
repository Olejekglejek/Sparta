--1.1
SELECT c.CustomerID, 
c.CompaName,
c.Address,
c.City,
c.Country,
FROM Customers c
WHERE c.City IN('Paris','London')

--1.2
SELECT p.ProductName, p.QuantityPerUnit
FROM Products p
WHERE p.QuantityPerUnit LIKE '%bottles%'

--1.3
SELECT p.ProductName, s.CompaName AS 'Supplier Name', s.Country
FROM Products p
INNER JOIN Suppliers s ON p.SupplierID = s.SupplierID
WHERE p.QuantityPerUnit LIKE '%bottles%'

--1.4
SELECT c.CategoryName, COUNT(ProductName) AS "Number of Products" FROM Products p
INNER JOIN Categories c ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryID, c.CategoryName
ORDER BY "Number of Products" DESC

--1.5
SELECT CONCAT(e.TitleofCourtesy,e.FirstName,' ',e.LastName) AS 'Employee Name'
e.City AS 'City of residence'
FROM Employees e
WHERE e.Country = 'UK';

--1.6
SELECT r.RegionID AS 'Region ID'
FORMAT(SUM(od.UnitPrice * od.Quantity *(1-od.Discount)), '$#,###,###.##') AS 'Sales Total'
FROM Region r
INNER JOIN Territories t ON r.RegionID = t.RegionID
INNER JOIN EmployeeTerritories et ON t.TerritoryID = et.TerritoryID
INNER JOIN Employees e ON et.EmployeeID = e.Employee
INNER JOIN Orders o ON e.EmployeeID = o.EmployeeID
INNER JOIN [Order Details] od ON o.OrderID = od.OrderID
GROUP BY r.RegionID
HAVING SUM(od.UnitPrice*od.Quantity*(1-od.Discount)) > 1000000

--1.7
SELECT ShipCountry, COUNT(ShipCountry) AS "Orders"
FROM Orders
WHERE Freight > 100
GROUP BY ShipCountry
HAVING ShipCountry IN ('UK', 'USA')

SELECT ShipCountry, COUNT(ShipCountry) AS "Orders"
FROM Orders
WHERE Freight > 100 AND ShipCountry IN ('UK', 'USA')
GROUP BY ShipCountry 

--1.8
SELECT TOP 1 od.OrderID
ROUND(SUM(od.UnitPrice*od.Quantity*od.Discount),2) AS "Amount(value) of Discount"
FROM [Order Details] od
GROUP BY od.OrderID
ORDER BY SUM(od.UnitPrice*od.Quantity*od.Discount) DESC

--3.1
SELECT CONCAT(emp.TitleOfCourtesy, ' ',emp.FirstName, ' ', emp.LastName) AS 'Employee', CONCAT(man.TitleOfCourtesy, ' ', man.FirstName, ' ', man.LastName)
FROM Employees AS emp
LEFT JOIN Employees AS man ON emp.ReportsTo = man.EmployeeID

SELECT r.EmployeeID, r.FirstName+ ' '+ r.LastName AS 'Employees Name', e.EmployeeID AS 'ReportsTo ID', e.FirstName+
FROM Employees AS e
RIGHT JOIN Employees r ON r.ReportsTo = e.EmployeeID

SELECT e.EmployeeID, e.FirstName+ ' '+ e.LastName AS 'Employees Name', r.EmployeeID AS 'ReportsTo ID', r.FirstName+
FROM Employees AS e
LEFT JOIN Employees r ON e.ReportsTo = r.EmployeeID

--3.2
SELECT s.CompaName, SUM(1-od.Discount)*od.UnitPrice*od.Quantity) AS 'Total sales'
FROM [Order Details] od
INNER JOIN Products p ON od.ProductID = p.ProductID
INNER JOIN Suppliers s ON p.SupplierID = s.SupplierID
GROUP BY s.CompanyName
HAVING SUM(1-od.Discount) * od.UnitPrice * od.Quantity) > 10000
ORDER BY 2 DESC

SELECT s.CompaName, FORMAT(SUM((1-od.Discount)*od.UnitPrice*od.Quantity)) AS 'Total sales'
FROM [Order Details] od 
INNER JOIN Products p ON od.ProductID = p.ProductID
INNER JOIN Suppliers s ON p.SupplierID = s.SupplierID
GROUP BY s.CompanyName
HAVING SUM((1-od.Discount) * od.UnitPrice * od.Quantity) > 10000
ORDER BY 'Total sales' DESC



--3.3 List the Top 10 Customers YTD for the latest year in the Orders file. Based on total value of orders shipped. No Excel required. (10 Marks) 

SELECT TOP 10 c.CompanyName AS 'Company name', ROUND(SUM(od.UnitPrice * od.Quantity *(1 - od.Discount)),2) AS "Total value of orders"   --I've chosen not to include the discount here but can easily be added back
FROM Customers c  
INNER JOIN Orders o ON c.CustomerID = o.CustomerID 
INNER JOIN [Order Details] od on o.OrderID = od.OrderID
WHERE FORMAT(o.OrderDate, 'yyyy') = (                                     --I tried using YEAR() but this doesn't compare properly - I guess this returns varchar?
        SELECT MAX(FORMAT(ord.OrderDate, 'yyyy'))           --subquery pulls the most recent year to use in the main query
        FROM Orders ord
    )
    AND o.ShippedDate IS NOT NULL    -- prevents unshipped orders from being included
GROUP BY c.CompanyName
ORDER BY "Total value of Orders" DESC;




astha

--3.3
SELECT TOP 10 o.CustomerID ,FORMAT(SUM(od.Quantity*od.UnitPrice*(1-od.Discount)), 'C') AS "Total Value Of Orders Shipped"
FROM [Order Details] od INNER JOIN Orders o 
ON o.OrderID=od.OrderID
WHERE YEAR(o.OrderDate)=(SELECT MAX(YEAR(o1.OrderDate)) FROM Orders o1)
AND o.ShippedDate IS NOT NULL
GROUP BY o.CustomerID
ORDER BY SUM(od.Quantity*od.UnitPrice*(1-od.Discount)) DESC


ben

SELECT Order_date, date_diff AS "Average_Shipping_Time" 
FROM (
    SELECT CONCAT(YEAR(OrderDate), ' ' ,FORMAT(MONTH(OrderDate), '0#')) AS "Order_date", AVG(DATEDIFF(d, OrderDate, ShippedDate)) AS "date_diff" 
    FROM Orders
    GROUP BY MONTH(OrderDate), YEAR(OrderDate)
) AS inner_table
ORDER BY Order_date;

asta

--3.4
--Plot the Average Ship Time by month for all data in the Orders Table using a line chart as below. 

SELECT CONCAT(MONTH(o.OrderDate),'-',YEAR(o.OrderDate)) AS "MONTH-YEAR", 
AVG(CAST(DATEDIFF(d, o.OrderDate, o.ShippedDate) AS DECIMAL(10,2))) AS "Ship Time By Month"
FROM Orders o
WHERE o.ShippedDate IS NOT NULL
GROUP BY YEAR(o.OrderDate), MONTH(o.OrderDate)
ORDER BY YEAR(o.OrderDate) DESC, MONTH(o.OrderDate) ASC

SELECT CONCAT(MONTH(o.OrderDate),'-', YEAR(o.OrderDate)) AS 'Month-Year',
AVG(DATEDIFF(dd, o.OrderDate,o.ShippedDate)) AS "Average Ship Time"
FROM Orders o
WHERE o.ShippedDate IS NOT NULL
GROUP BY YEAR(o.OrderDate), MONTH(o.OrderDate)
ORDER BY YEAR(o.OrderDate), MONTH(o.OrderDate)




1 to 1 form like last friday stop stat continue
learn the theory, normalization
take the notes you have to show
post the project and show it


1nf 2 nf 3nf examples

1nf
multipele same contact wiht multiple phones
we have to pick a primary key from the candidate key
and break out tables
No repeating groups 
Everything has to be atomic 
Entity = tables
Atributes = columns
when designing i collumn talks about 1 specific think (ex. not. customers but 1 single)
2nf







