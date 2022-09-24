USE Northwind
--1
SELECT CustomerID,OrderID,DATEDIFF(DAY, OrderDate,RequiredDate)
FROM Orders;

--2
SELECT COUNT(CustomerID)Total_Clientes,MIN(OrderDate)Primer_Fecha,MAX(ShippedDate)Fecha_Mas_Reciente
FROM Orders

--3
SELECT CompanyName,City,Country
FROM Customers
WHERE City!=Country AND NOT Country='Mexico'

--4
SELECT CustomerID,EmployeeID
FROM Orders
WHERE EmployeeID>=5 OR EmployeeID<=10 ORDER BY EmployeeID; 

SELECT CustomerID,EmployeeID
FROM Orders
WHERE EmployeeID BETWEEN 5 AND 10; 

SELECT CustomerID,EmployeeID
FROM Orders
WHERE EmployeeID IN(5,10); 

--5
SELECT 
CustomerID,EmployeeID,YEAR(OrderDate)
FROM Orders
WHERE YEAR (OrderDate) LIKE '1998%'
ORDER BY CustomerID;

