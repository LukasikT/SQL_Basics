--1
SELECT *
FROM Production.Product
WHERE Color = 'Black'
ORDER BY ListPrice DESC
go

--2
SELECT *
FROM Production.Product
WHERE Name LIKE 'L%' AND Color = 'Red' or Name LIKE 'L%' AND Color ='Blue'
ORDER BY Size DESC, ListPrice
GO

--3
SELECT *
FROM Sales.SalesTerritory
WHERE   [Group] = 'Europe'
ORDER BY Name
GO

--4
SELECT *
FROM Sales.SalesTerritory
ORDER BY [Group] DESC, Name
GO

--5
SELECT *
FROM Sales.SalesOrderHeader
WHERE TerritoryID BETWEEN 7 AND 9
GO

--6
SELECT  TOP(10) *
FROM Sales.SalesOrderHeader
WHERE TerritoryID IN (7,8,9) AND SubTotal <100
ORDER BY OrderDate DESC 
GO

--7
SELECT TOP (10) *
FROM Sales.SalesOrderHeader
WHERE TerritoryID = 7
ORDER BY SubTotal DESC
GO

--8
SELECT *
FROM Sales.SalesOrderHeader
WHERE TerritoryID = 7 AND CreditCardID IS NULL

--9
SELECT *
FROM Sales.SalesOrderHeader
WHERE TerritoryID = 7 AND CreditCardID IS NOT NULL
GO

--10
SELECT *
FROM Sales.SalesOrderHeader
WHERE OrderDate between '20110101' and '20111231'
ORDER BY OrderDate
GO