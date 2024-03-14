-- Example 1: Inserting data into a table with specified columns
INSERT INTO Customers (CustomerName, ContactName, Country)
VALUES ('Cardinal', 'Tom B. Erichsen', 'Norway');

-- Example 2: Inserting data into all columns of a table
INSERT INTO Orders
VALUES (10248, 'Vincent', 'Garden', 'Berglunds snabbköp', 'Sweden');

-- Example 3: Inserting multiple rows into a table
INSERT INTO Products (ProductName, QuantityPerUnit, Price, Stock)
VALUES 
    ('Chai', '10 boxes x 20 bags', 18, 39),
    ('Chang', '24 - 12 oz bottles', 19, 17),
    ('Aniseed Syrup', '12 - 550 ml bottles', 10, 13);

-- Example 4: Inserting data from another table
INSERT INTO SupplierProducts (SupplierID, ProductName, UnitPrice)
SELECT SupplierID, ProductName, UnitPrice
FROM Products
WHERE Discontinued = 0;
