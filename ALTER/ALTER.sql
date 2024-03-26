-- Adding a new column named `Email` to the `Employees` table
ALTER TABLE Employees
ADD Email VARCHAR(255);

-- Removing the `Email` column from the `Employees` table
ALTER TABLE Employees
DROP COLUMN Email;

-- Changing the data type of the `Salary` column in the `Employees` table to `DECIMAL(10, 2)`
ALTER TABLE Employees
ALTER COLUMN Salary TYPE DECIMAL(10, 2);

-- Renaming the `EmpName` column to `EmployeeName` in the `Employees` table
ALTER TABLE Employees
RENAME COLUMN EmpName TO EmployeeName;
