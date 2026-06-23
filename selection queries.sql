select *
from PRPdb.dbo.productlines;

select productName, buyPrice
from PRPdb.dbo.products;

select productName, buyPrice
from PRPdb.dbo.products
order by buyPrice desc;

select productName, buyPrice
from PRPdb.dbo.products
order by buyPrice asc;
--or
select productName, buyPrice
from products
order by buyPrice;

select orderNumber, customerNumber, orderDate, status   
from PRPdb.dbo.orders
order by customerNumber Asc, orderDate Desc;

select distinct customerNumber
from PRPdb.dbo.orders;

select distinct customerNumber, orderDate
from PRPdb.dbo.orders
ORDER BY customerNumber, orderDate;

