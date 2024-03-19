-- Deleting a Single Row
DELETE FROM Employees WHERE EmployeeID = 5;

-- Deleting Multiple Rows
DELETE FROM Employees WHERE Department = 'Sales';

-- Deleting All Rows (Use with caution!)
DELETE FROM Employees;

-- OR, to be more explicit and safe
DELETE FROM Employees WHERE 1=1;

-- Using Transactions for Safe Deletion
BEGIN TRANSACTION;
DELETE FROM Employees WHERE Department = 'Sales';
-- If everything is okay
COMMIT;
-- If something goes wrong
ROLLBACK;
