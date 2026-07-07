INSERT INTO Departments (dept_name) VALUES ('Engineering'), ('HR'), ('Sales');

INSERT INTO Employees (first_name, last_name, hire_date, dept_id, email) VALUES 
('Arjun', 'Mehta', '2022-01-15', 1, 'arjun@company.com'),
('Priya', 'Sharma', '2023-05-10', 1, 'priya@company.com'),
('Sara', 'Khan', '2021-11-20', 2, 'sara@company.com'),
('Vikram', 'Singh', '2024-02-01', 3, 'vikram@company.com');

INSERT INTO Salaries (emp_id, gross_salary, bonus, payment_date) VALUES 
(1, 85000, 5000, '2025-01-31'),
(2, 72000, 2000, '2025-01-31'),
(3, 60000, 1500, '2025-01-31'),
(4, 55000, 0, '2025-01-31');