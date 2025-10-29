SELECT
o.ORDERID as OrderID,
GROUP_CONCAT(d.NAME order by d.NAME) as Items
FROM Orders o
LEFT OUTER JOIN OrdersDishes od ON o.ORDERID = od.ORDERID
LEFT OUTER JOIN Dishes d ON d.DISHID = od.DISHID
where o.ORDERDATE >= '2022-05-01'
group by o.ORDERID;
