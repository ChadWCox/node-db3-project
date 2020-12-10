-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

`SELECT 
p.ProductName,
c.CategoryName 
FROM Product as P
JOIN Category as C
WHERE P.CategoryId = C.Id`

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

`SELECT 
O.Id as OrderId,
S.CompanyName as Shipper,
O.OrderDate as OrderDate
FROM Orders as O
JOIN Shipper as S
WHERE O.ShipVia = S.Id AND
OrderDate < '2012-08-09' 
ORDER BY OrderDate DESC`

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

`SELECT 
P.ProductName,
O.Quantity 
FROM OrderDetail as O
JOIN Product as P
Where 
P.Id = O.ProductId AND
O.OrderId = 10251
ORDER BY P.ProductName ASC`

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

`SELECT 
O.Id as OrderId,
C.CompanyName,
E.LastName
FROM Orders as O
JOIN 
Employee as E
ON E.Id = O.EmployeeID
JOIN
Customer as C
ON O.CustomerID = C.Id`