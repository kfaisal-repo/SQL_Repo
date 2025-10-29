SELECT
o.ORDERDATE as orderdate,
count(o.ORDERID)
FROM Orders o
JOIN OrdersDishes od ON o.ORDERID = od.ORDERID
JOIN Dishes d ON d.DISHID = od.DISHID
where d.NAME = 'Handcrafted Pizza'
group by orderdate
order by orderdate
