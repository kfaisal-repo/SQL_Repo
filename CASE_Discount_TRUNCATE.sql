-- SQL request(s)​​​​​​‌‌‌​​‌‌‌‌​‌‌‌‌‌‌​​​​‌‌‌‌‌ below
SELECT
Name AS Item,
Price AS OriginalPrice,
CASE 
WHEN Price < 7 THEN '5%'
WHEN Price >= 7 AND Price <= 10 THEN '10%'
ELSE '15%'
END AS DiscountPercent,
CASE 
    WHEN Price < 7 THEN TRUNCATE((0.95 * Price),2)
    WHEN Price >= 7 AND Price <= 10 THEN TRUNCATE((0.90 * Price),2)
    ELSE TRUNCATE((0.85 * Price),2)
END AS DiscountedPrice
FROM Dishes
ORDER BY Name;
