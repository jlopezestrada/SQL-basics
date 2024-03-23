-- INNER JOIN Example
SELECT Employees.FirstName, Employees.LastName, Departments.DepartmentName
FROM Employees
INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;

-- LEFT JOIN Example
SELECT Employees.FirstName, Departments.DepartmentName
FROM Employees
LEFT JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;

-- RIGHT JOIN Example
SELECT Employees.FirstName, Departments.DepartmentName
FROM Departments
RIGHT JOIN Employees ON Departments.DepartmentID = Employees.DepartmentID;

-- FULL OUTER JOIN Example
-- Note: FULL OUTER JOIN might not be supported in all SQL databases like MySQL. Use with caution.
SELECT Employees.FirstName, Departments.DepartmentName
FROM Employees
FULL OUTER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;

-- CROSS JOIN Example
SELECT Employees.FirstName, Departments.DepartmentName
FROM Employees
CROSS JOIN Departments;

-- SELF JOIN Example
SELECT A.EmployeeName AS Employee1, B.EmployeeName AS Employee2
FROM Employees A, Employees B
WHERE A.EmployeeID < B.EmployeeID;
