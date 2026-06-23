SELECT productName
FROM PRPdb.dbo.products
where productLine = 'Classic Cars'
UNION
SELECT productName
from PRPdb.dbo.products
WHERE productLine = 'Vintage Cars';

SELECT productName
FROM PRPdb.dbo.products
where productLine = 'Classic Cars'
UNION ALL
SELECT productName
from PRPdb.dbo.products
WHERE productLine = 'Vintage Cars';

SELECT productName
FROM PRPdb.dbo.products
EXCEPT
SELECT productName
from PRPdb.dbo.products
where productLine = 'Classic Cars';

SELECT customerNumber, customerName
FROM PRPdb.dbo.customers
WHERE country = 'USA'
INTERSECT
SELECT customerNumber, customerName
FROM PRPdb.dbo.customers
WHERE creditLimit > 55000;