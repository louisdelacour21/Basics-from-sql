-- sql file
-- Create the table
CREATE TABLE Employees (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10,2),
    HireDate DATE
);

-- Insert sample data
INSERT INTO Employees (FirstName, LastName, Department, Salary, HireDate)
VALUES 
('Alice', 'Smith', 'Finance', 48000.00, '2020-03-01'),
('Bob', 'Johnson', 'HR', 43000.00, '2019-06-15'),
('Carol', 'Davis', 'Finance', 51000.00, '2021-11-20'),
('David', 'Brown', 'IT', 60000.00, '2018-01-10'),
('Eva', 'Wilson', 'IT', 58000.00, '2022-05-25');

-- View the entire table
SELECT * FROM Employees;

-- Sort the data
SELECT * FROM Employees
ORDER BY Salary DESC;

-- Filter with conditions
SELECT * FROM Employees
WHERE Department = 'Finance' AND Salary > 49000;

-- Perform aggregate calculations
SELECT 
    Department,
    COUNT(*) AS NumberOfEmployees,
    AVG(Salary) AS AverageSalary,
    MAX(Salary) AS MaxSalary
FROM Employees
GROUP BY Department;

-- Add a computed column
SELECT 
    FirstName,
    LastName,
    Salary,
    Salary * 1.10 AS SalaryAfterRaise
FROM Employees;

-- Update data
UPDATE Employees
SET Salary = Salary + 2000
WHERE Department = 'HR';

-- Delete a row
DELETE FROM Employees
WHERE FirstName = 'David' AND LastName = 'Brown';
