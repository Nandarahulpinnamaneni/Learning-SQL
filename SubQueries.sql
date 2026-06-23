SELECT productName, buyPrice,
(SELECT AVG(buyPrice) From PRPdb.dbo.products) AS avg_price
FROM PRPdb.dbo.products;

Select productLine, avg_price
FROM (Select productline, AVG(buyPrice) AS avg_price
        FROM PRPdb.dbo.products
        GROUP BY productLine)
        AS line_averages
WHERE avg_price > 100;


SELECT * from PRPdb.dbo.products;
SELECT productName, buyPrice
FROM PRPdb.dbo.products AS p1
WHERE p1.buyPrice > (
    Select AVG(p2.buyPrice)
    FROM PRPdb.dbo.products p2
    where p1.productLine = p2.productLine)
ORDER BY productLine, buyPrice DESC;


SELECT productName, buyPrice
From PRPdb.dbo.products
WHERE productCode IN (
    SELECT productCode from PRPdb.dbo.orderdetails
    where orderNumber = 306
);

SELECT customerName
FROM PRPdb.dbo.customers c
WHERE EXISTS (
    SELECT 1 FROM PRPdb.dbo.orders o
    where o.customerNumber = c.customerNumber
    AND o.orderDate >= '2023-01-01'
);

SELECT orderNumber, orderDate
from PRPdb.dbo.orders
WHERE customerNumber = (
    Select customerNumber
    FROM PRPdb.dbo.customers
    where customerName = 'OceanTrade'
)
ORDER BY orderDate DESC;


-- CTE is order_totals
WITH order_totals As (
    SELECT orderNumber,
    SUM(quantityOrdered * priceEach) AS total_amount
    FROM PRPdb.dbo.orderdetails
    Group BY orderNumber
)
SELECT o.orderNumber, o.orderDate, ot.total_amount
FROM PRPdb.dbo.orders o Join order_totals ot 
On o.orderNumber = ot.orderNumber
ORDER BY ot.total_amount DESC;