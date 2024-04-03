-- Create a simple index on a single column
CREATE INDEX idx_column_name ON table_name (column_name);

-- Create a simple index on the 'employee_id' column of the 'employees' table
CREATE INDEX idx_employee_id ON employees (employee_id);

-- Create a composite index on multiple columns
CREATE INDEX idx_composite_name ON table_name (column1, column2);

-- Create a composite index on 'last_name' and 'first_name' in 'employees' table
CREATE INDEX idx_name ON employees (last_name, first_name);

-- Query that benefits from the idx_employee_id index
SELECT * FROM employees WHERE employee_id = 123;

-- Create a unique index to enforce uniqueness of values in a column
CREATE UNIQUE INDEX idx_unique_column_name ON table_name (column_name);

-- Create a unique index on the 'email' column of the 'employees' table
CREATE UNIQUE INDEX idx_unique_email ON employees (email);

-- Drop an index
DROP INDEX index_name ON table_name;

-- Drop the 'idx_employee_id' index from the 'employees' table
DROP INDEX idx_employee_id ON employees;
