-- Creating a VIEW named 'EmployeeDepartmentView'
CREATE VIEW EmployeeDepartmentView AS
SELECT 
    Employees.EmployeeID, 
    Employees.FirstName, 
    Employees.LastName, 
    Departments.DepartmentName
FROM 
    Employees
INNER JOIN 
    Departments 
ON 
    Employees.DepartmentID = Departments.DepartmentID;

-- Querying the VIEW
SELECT * FROM EmployeeDepartmentView;

-- This will return a result set that includes:
-- EmployeeID, FirstName, LastName, DepartmentName

SELECT FirstName, LastName FROM EmployeeDepartmentView
WHERE DepartmentName = 'Sales';
