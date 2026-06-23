CREATE TABLE PRPdb.dbo.productlines (
    productLine int PRIMARY KEY,
    textDescription Varchar(20),
    htmlDescription Varchar(20),
    image INT
);

create table PRPdb.dbo.products (
    productCode int PRIMARY KEY,
    productName Varchar(20),
    productLine varchar(20),
    productScale INT,
    productVendor varchar(20),
    productDescription varchar(20),
    quantityInStock int,
    buyPrice int,
    MSRP int
);

create table PRPdb.dbo.orderdetails(
    orderNumber int primary key,
    productCode varchar(10),
    quantityOrdered int,
    priceEach int,
    orderLineNumber int
);

create table PRPdb.dbo.orders(
    orderNumber int primary key,
    orderDate Date,
    requiredDate Date,
    shippedDate Date,
    Status Varchar(10),
    comments Varchar(50),
    customerNumber int
);

Create table PRPdb.dbo.payments(
    customerNumber int primary key,
    checkNumber int,
    paymentDate Date, 
    amount int 
);

Create table PRPdb.dbo.customers(
    customerNumber int  primary key,
    customerName Varchar(20),
    contactLastName Varchar(10),
    contactFirstName Varchar(20),
    phone int,
    addressLine1 Varchar(20),
    addressLine2 Varchar(20),
    city Varchar(10),
    state Varchar(10),
    postalCode Int,
    country Varchar(10),
    salesRepEmployeeNumber int,
    creditLimit int
);

Create table PRPdb.dbo.employees(
    employeeNumber int primary key,
    lastName varchar(15),
    firstName Varchar(20),
    extension Varchar(20),
    email Varchar(30),
    officeCode Int ,
    reportsTo Varchar(20),
    jobTitle Varchar(20),
);

Create table PRPdb.dbo.offices(
    officeCode int primary key, 
    city varchar(10),
    phone Int,
    addressLine1 Varchar(20),
    addressLine2 Varchar(15),
    state Varchar(10),
    country Varchar(10),
    postalCode int,
    territory Varchar(15)
);


