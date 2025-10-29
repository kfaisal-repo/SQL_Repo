SELECT
'00' || EmployeeID as ID,
LastName ||', '||FirstName as Name,
LOWER(SUBSTR(FirstName,1,1)) || LOWER(SUBSTR(LastName,1,7)) as Login,
Username || '@nadias-garden.com' as Email
FROM Employees
order by Name;
