


INSERT INTO PRPdb.dbo.productlines (
    productLine,
    textDescription,
    htmlDescription,
    image
)
VALUES
(1, 'Classic Cars', 'Vintage models', 101),
(2, 'Motorcycles', 'Sport bikes', 102),
(3, 'Planes', 'Aircraft models', 103),
(4, 'Ships', 'Marine vehicles', 104),
(5, 'Trains', 'Railway models', 105),
(6, 'Trucks', 'Heavy trucks', 106),
(7, 'Buses', 'Passenger buses', 107),
(8, 'Vintage Cars', 'Old collections', 108),
(9, 'Sports Cars', 'Fast vehicles', 109),
(10, 'Construction', 'Build machines', 110);


INSERT INTO PRPdb.dbo.products (
    productCode,
    productName,
    productLine,
    productScale,
    productVendor,
    productDescription,
    quantityInStock,
    buyPrice,
    MSRP
)
VALUES
(1001, 'Mustang 1969', 'Classic Cars', 18, 'AutoArt', 'Classic muscle car', 50, 45, 60),
(1002, 'Harley X', 'Motorcycles', 12, 'BikeZone', 'Sport motorcycle', 30, 35, 50),
(1003, 'Boeing 747', 'Planes', 24, 'SkyModels', 'Commercial aircraft', 20, 80, 120),
(1004, 'Titanic Mini', 'Ships', 36, 'Oceanic', 'Luxury ship model', 15, 70, 100),
(1005, 'Bullet Train', 'Trains', 48, 'RailKing', 'Fast train model', 25, 55, 85),
(1006, 'Ford Truck', 'Trucks', 18, 'TruckCorp', 'Heavy duty truck', 40, 65, 95),
(1007, 'City Bus', 'Buses', 24, 'TransitCo', 'Passenger bus', 22, 50, 75),
(1008, 'Chevy 1957', 'Vintage Cars', 18, 'RetroAuto', 'Vintage car model', 18, 60, 90),
(1009, 'Ferrari F8', 'Sports Cars', 12, 'Ferrari', 'Luxury sports car', 12, 120, 180),
(1010, 'Excavator X', 'Construction', 30, 'BuildTech', 'Construction machine', 28, 75, 110);

INSERT INTO PRPdb.dbo.orderdetails (
    orderNumber,
    productCode,
    quantityOrdered,
    priceEach,
    orderLineNumber
)
VALUES
(301, '1001', 2, 60, 1),
(302, '1002', 1, 50, 2),
(303, '1003', 3, 120, 3),
(304, '1004', 1, 100, 4),
(305, '1005', 4, 85, 5),
(306, '1006', 2, 95, 6),
(307, '1007', 5, 75, 7),
(308, '1008', 1, 90, 8),
(309, '1009', 2, 180, 9),
(310, '1010', 3, 110, 10);

INSERT INTO PRPdb.dbo.orders (
    orderNumber,
    orderDate,
    requiredDate,
    shippedDate,
    Status,
    comments,
    customerNumber
)
VALUES
(301, '2024-01-01', '2024-01-05', '2024-01-03', 'Shipped', 'Delivered on time', 201),
(302, '2024-01-02', '2024-01-06', '2024-01-04', 'Shipped', 'Urgent delivery', 202),
(303, '2024-01-03', '2024-01-07', '2024-01-05', 'Pending', 'Awaiting shipment', 203),
(304, '2024-01-04', '2024-01-08', '2024-01-06', 'Shipped', 'Packed safely', 204),
(305, '2024-01-05', '2024-01-09', '2024-01-07', 'Cancelled', 'Customer cancelled', 205),
(306, '2024-01-06', '2024-01-10', '2024-01-08', 'Shipped', 'Express shipping', 206),
(307, '2024-01-07', '2024-01-11', '2024-01-09', 'Pending', 'Processing order', 207),
(308, '2024-01-08', '2024-01-12', '2024-01-10', 'Shipped', 'Delivered early', 208),
(309, '2024-01-09', '2024-01-13', '2024-01-11', 'Shipped', 'Standard delivery', 209),
(310, '2024-01-10', '2024-01-14', '2024-01-12', 'Pending', 'Awaiting approval', 210);

INSERT INTO PRPdb.dbo.payments (
    customerNumber,
    checkNumber,
    paymentDate,
    amount
)
VALUES
(201, 9001, '2024-01-15', 120),
(202, 9002, '2024-01-16', 50),
(203, 9003, '2024-01-17', 360),
(204, 9004, '2024-01-18', 100),
(205, 9005, '2024-01-19', 340),
(206, 9006, '2024-01-20', 190),
(207, 9007, '2024-01-21', 375),
(208, 9008, '2024-01-22', 90),
(209, 9009, '2024-01-23', 360),
(210, 9010, '2024-01-24', 330);

INSERT INTO PRPdb.dbo.customers (
    customerNumber,
    customerName,
    contactLastName,
    contactFirstName,
    phone,
    addressLine1,
    addressLine2,
    city,
    state,
    postalCode,
    country,
    salesRepEmployeeNumber,
    creditLimit
)
VALUES
(201, 'AutoWorld', 'Johnson', 'Mike', 111222, '12 King St', 'Apt 1', 'New York', 'NY', 10001, 'USA', 101, 50000),
(202, 'BikeHouse', 'Williams', 'Sara', 222333, '45 Queen St', 'Suite 2', 'Chicago', 'IL', 60007, 'USA', 102, 30000),
(203, 'SkyJet', 'Davis', 'Tom', 333444, '78 Eagle Rd', 'Floor 3', 'Dallas', 'TX', 73301, 'USA', 103, 80000),
(204, 'OceanTrade', 'Miller', 'Anna', 444555, '99 Harbor St', 'Dock 1', 'Seattle', 'WA', 98101, 'USA', 104, 45000),
(205, 'RailCorp', 'Garcia', 'Leo', 555666, '15 Track Rd', 'Unit 5', 'Miami', 'FL', 33101, 'USA', 105, 60000),
(206, 'TruckLine', 'Martinez', 'Eva', 666777, '33 Cargo St', 'Suite 4', 'Boston', 'MA', 2101, 'USA', 106, 55000),
(207, 'CityTransit', 'Rodriguez', 'Noah', 777888, '66 Metro Rd', 'Floor 2', 'Denver', 'CO', 80014, 'USA', 107, 35000),
(208, 'RetroCars', 'Hernandez', 'Liam', 888999, '88 Retro Ave', 'Block B', 'Atlanta', 'GA', 30301, 'USA', 108, 90000),
(209, 'FastMotors', 'Lopez', 'Ella', 999111, '10 Speed St', 'Suite 8', 'Phoenix', 'AZ', 85001, 'USA', 109, 100000),
(210, 'BuildTech', 'Gonzalez', 'Ryan', 123789, '50 Build Rd', 'Unit 9', 'Detroit', 'MI', 48201, 'USA', 110, 70000);

INSERT INTO PRPdb.dbo.employees (
    employeeNumber,
    lastName,
    firstName,
    extension,
    email,
    officeCode,
    reportsTo,
    jobTitle
)
VALUES
(101, 'Smith', 'John', 'x101', 'john@prp.com', 1, '105', 'Sales Rep'),
(102, 'Brown', 'Lisa', 'x102', 'lisa@prp.com', 2, '105', 'Sales Rep'),
(103, 'Taylor', 'James', 'x103', 'james@prp.com', 3, '108', 'Manager'),
(104, 'Wilson', 'Emma', 'x104', 'emma@prp.com', 4, '103', 'Sales Rep'),
(105, 'Moore', 'David', 'x105', 'david@prp.com', 5, '108', 'Director'),
(106, 'Martin', 'Sophia', 'x106', 'sophia@prp.com', 6, '105', 'Sales Rep'),
(107, 'Lee', 'Daniel', 'x107', 'daniel@prp.com', 7, '103', 'Sales Rep'),
(108, 'Clark', 'Olivia', 'x108', 'olivia@prp.com', 8, 'NULL', 'CEO'),
(109, 'Hall', 'Chris', 'x109', 'chris@prp.com', 9, '105', 'Sales Rep'),
(110, 'Allen', 'Mia', 'x110', 'mia@prp.com', 10, '103', 'Sales Rep');

INSERT INTO PRPdb.dbo.offices (
    officeCode,
    city,
    phone,
    addressLine1,
    addressLine2,
    state,
    country,
    postalCode,
    territory
)
VALUES
(1, 'New York', 111111, '12 Main St', 'Suite 1', 'NY', 'USA', 10001, 'East'),
(2, 'Chicago', 222222, '45 Lake St', 'Floor 2', 'IL', 'USA', 60007, 'Central'),
(3, 'Dallas', 333333, '78 Hill Rd', 'Block A', 'TX', 'USA', 73301, 'South'),
(4, 'Seattle', 444444, '99 Pine St', 'Room 4', 'WA', 'USA', 98101, 'West'),
(5, 'Miami', 555555, '22 Ocean Dr', 'Suite 5', 'FL', 'USA', 33101, 'South'),
(6, 'Boston', 666666, '15 River Rd', 'Floor 3', 'MA', 'USA', 02101, 'East'),
(7, 'Denver', 777777, '66 Park Ave', 'Suite 7', 'CO', 'USA', 80014, 'West'),
(8, 'Atlanta', 888888, '88 Peach St', 'Floor 1', 'GA', 'USA', 30301, 'South'),
(9, 'Phoenix', 999999, '10 Sun Rd', 'Unit 2', 'AZ', 'USA', 85001, 'West'),
(10, 'Detroit', 123456, '50 Auto St', 'Suite 9', 'MI', 'USA', 48201, 'Central');

