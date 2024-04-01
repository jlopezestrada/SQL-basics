-- Use meaningful alias names and fully qualify column names
SELECT
    e.EmployeeID AS EmployeeID,
    e.FirstName || ' ' || e.LastName AS FullName,
    d.DepartmentName AS Department
FROM
    Employees e
JOIN
    Departments d ON e.DepartmentID = d.DepartmentID
WHERE
    e.Status = 'Active' -- Use descriptive values
    AND e.StartDate > '2020-01-01' -- Use ISO date format for clarity
ORDER BY
    e.LastName, e.FirstName; -- Order results for readability

-- Use comments to explain complex logic
-- This query calculates the total sales for each product category
SELECT
    pc.CategoryName,
    SUM(s.Quantity * s.UnitPrice) AS TotalSales
FROM
    Sales s
INNER JOIN
    Products p ON s.ProductID = p.ProductID
INNER JOIN
    ProductCategories pc ON p.CategoryID = pc.CategoryID
GROUP BY
    pc.CategoryName
HAVING
    SUM(s.Quantity * s.UnitPrice) > 1000 -- Filter categories with sales over 1000
ORDER BY
    TotalSales DESC;

-- Use parameterized queries to prevent SQL injection
-- Example in a pseudo code context
PREPARE statement FROM
    'SELECT * FROM Employees WHERE DepartmentID = ?';
EXECUTE statement USING @DepartmentID;

-- Be explicit in SELECT statements instead of using SELECT *
SELECT
    EmployeeID,
    FirstName,
    LastName,
    Email
FROM
    Employees;

-- Index frequently searched columns to improve performance
-- Example of creating an index on the Employees table for the LastName column
CREATE INDEX idx_lastname
ON Employees (LastName);

-- Use transactions for operations that need to be atomic
START TRANSACTION;
INSERT INTO Orders (OrderDate, CustomerID)
VALUES (NOW(), @CustomerID);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity)
VALUES (LAST_INSERT_ID(), @ProductID, @Quantity);
COMMIT;
