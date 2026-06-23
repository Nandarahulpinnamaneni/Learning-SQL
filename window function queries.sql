SELECT employeeNumber, officeCode,extension,
AVG(LEN(extension)) OVER (PARTITION BY officeCode) AS avg_extension_lemgth
FROM PRPdb.dbo.employees;

SELECT employeeNumber, officeCode, extension,
SUM(LEN(extension)) OVER (ORDER BY LEN(extension) DESC)
AS running_total_length
FROM PRPdb.dbo.employees;

SELECT * FROM PRPdb.dbo.products;
SELECT productCode, productName, buyPrice,
DENSE_RANK() OVER(
    ORDER BY buyPrice DESC
) AS price_rank
FROM PRPdb.dbo.products;
-- Dense rank: same rank to all in case of ties/clash and next rank is +1 only


SELECT productCode, productName, buyPrice,
RANK() OVER(

    ORDER BY buyPrice DESC
) AS price_rank
FROM PRPdb.dbo.products;
-- Rank: same rank to all in case of ties/clash and next rank is previous rank + quantity 

SELECT employeeNumber, officeCode, extension, 
RANK() OVER (
    PARTITION BY officeCode
    ORDER BY LEN(extension) DESC
) AS extension_rank_in_office
FROM PRPdb.dbo.employees;


SELECT orderNumber, orderDate, customerNumber,
ROW_NUMBER() OVER (
    ORDER BY orderDate, customerNumber
) AS order_number
FROM PRPdb.dbo.orders;
-- ROW_Number: gives distinct rank after arranging in certain order

