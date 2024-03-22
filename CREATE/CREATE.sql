-- Creating a database
CREATE DATABASE CompanyDB;

-- Creating a schema within the database
CREATE SCHEMA HumanResources;

-- Creating a table within the HumanResources schema
CREATE TABLE HumanResources.Employees (
    EmployeeID INT NOT NULL,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    DepartmentID INT,
    HireDate DATE,
    PRIMARY KEY (EmployeeID),
    FOREIGN KEY (DepartmentID) REFERENCES HumanResources.Departments(DepartmentID)
);

-- Creating another table for Departments
CREATE TABLE HumanResources.Departments (
    DepartmentID INT NOT NULL,
    DepartmentName VARCHAR(100),
    ManagerID INT,
    PRIMARY KEY (DepartmentID),
    FOREIGN KEY (ManagerID) REFERENCES HumanResources.Employees(EmployeeID)
);

-- Creating a view to simplify access to employee full names and departments
CREATE VIEW HumanResources.EmployeeDetails AS
SELECT 
    e.FirstName,
    e.LastName,
    d.DepartmentName
FROM HumanResources.Employees e
JOIN HumanResources.Departments d ON e.DepartmentID = d.DepartmentID;

-- Creating an index on the LastName column in the Employees table for faster searches
CREATE INDEX idx_lastname ON HumanResources.Employees(LastName);
