SELECT productLine, AVG(buyPrice) AS avg_price
FROM PRPdb.dbo.products
GROUP BY productLine;

SELECT officeCode,
AVG(LEN(extension)) AS avg_extension_lemgth
FROM PRPdb.dbo.employees
GROUP BY officeCode;
-- gives you 1 record per group and adds your selected values