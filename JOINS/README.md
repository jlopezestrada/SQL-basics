  # SQL Joins Explained
  
  SQL joins are used to combine rows from two or more tables, based on a related column between them. Understanding the different types of joins in SQL is crucial for querying relational databases effectively. Here's an overview of the most common types of joins and their uses:
  
  ## INNER JOIN
  
  The `INNER JOIN` keyword selects records that have matching values in both tables involved in the join. It's the most common type of join.
  
  ```sql
  SELECT columns
  FROM table1
  INNER JOIN table2
  ON table1.common_column = table2.common_column;
  ```
  
  ### Example
  
  ```sql
  SELECT Employees.FirstName, Employees.LastName, Departments.DepartmentName
  FROM Employees
  INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;
  ```
  
  This query retrieves the first name, last name of employees, and their department names by joining the `Employees` and `Departments` tables on their common column, `DepartmentID`.
  
  ## LEFT JOIN (or LEFT OUTER JOIN)
  
  The `LEFT JOIN` returns all records from the left table (table1), and the matched records from the right table (table2). The result is NULL from the right side if there is no match.
  
  ```sql
  SELECT columns
  FROM table1
  LEFT JOIN table2
  ON table1.common_column = table2.common_column;
  ```
  
  ### Example
  
  ```sql
  SELECT Employees.FirstName, Departments.DepartmentName
  FROM Employees
  LEFT JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;
  ```
  
  This query gets all employees and their department names. If an employee does not belong to any department, the department name will be NULL.
  
  ## RIGHT JOIN (or RIGHT OUTER JOIN)
  
  The `RIGHT JOIN` works exactly opposite to the `LEFT JOIN`. It returns all records from the right table (table2), and the matched records from the left table (table1). The result is NULL from the left side when there is no match.
  
  ```sql
  SELECT columns
  FROM table1
  RIGHT JOIN table2
  ON table1.common_column = table2.common_column;
  ```
  
  ### Example
  
  ```sql
  SELECT Employees.FirstName, Departments.DepartmentName
  FROM Departments
  RIGHT JOIN Employees ON Departments.DepartmentID = Employees.DepartmentID;
  ```
  
  This query gets all employees and their department names. If there are departments with no employees, those will not be listed.
  
  ## FULL OUTER JOIN
  
  The `FULL OUTER JOIN` keyword returns all records when there is a match in either left (table1) or right (table2) table records.
  
  ```sql
  SELECT columns
  FROM table1
  FULL OUTER JOIN table2
  ON table1.common_column = table2.common_column;
  ```
  
  ### Example
  
  ```sql
  SELECT Employees.FirstName, Departments.DepartmentName
  FROM Employees
  FULL OUTER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;
  ```
  
  This query returns all employees and all departments, with NULL in either side where there is no match.
  
  ## CROSS JOIN
  
  The `CROSS JOIN` returns a Cartesian product of the two tables, i.e., it will return all possible combinations of rows from both tables.
  
  ```sql
  SELECT columns
  FROM table1
  CROSS JOIN table2;
  ```
  
  ### Example
  
  ```sql
  SELECT Employees.FirstName, Departments.DepartmentName
  FROM Employees
  CROSS JOIN Departments;
  ```
  
  This query lists all possible combinations of employees and departments.
  
  ## SELF JOIN
  
  A `SELF JOIN` is a regular join but the table is joined with itself.
  
  ```sql
  SELECT a.columns, b.columns
  FROM table1 a, table1 b
  WHERE condition;
  ```
  
  ### Example
  
  ```sql
  SELECT A.EmployeeName AS Employee1, B.EmployeeName AS Employee2
  FROM Employees A, Employees B
  WHERE A.EmployeeID < B.EmployeeID;
  ```
  
  This query compares each employee with every other employee in the same table.
