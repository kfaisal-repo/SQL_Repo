-- SQL request(s)​​​​​​‌‌‌​​‌‌‌‌​‌​​​​‌​‌​​​‌​​‌ below
SELECT 
c.CUSTOMERID as CustomerID ,
c.FIRSTNAME as FirstName,
c.LASTNAME as LastName, 
SUM(d.PRICE) as TotalSpend
FROM Customers c
LEFT OUTER JOIN Orders o ON c.CUSTOMERID = o.CUSTOMERID
LEFT OUTER JOIN OrdersDishes od ON o.ORDERID = od.ORDERID
LEFT OUTER JOIN Dishes d ON d.DISHID = od.DISHID
group by c.CUSTOMERID
having TotalSpend > 450.0
order by SUM(d.PRICE) DESC
