CREATE SCHEMA IF NOT EXISTS payroll_db;

-- 1. Departments Table
CREATE TABLE Departments (
    dept_id INT PRIMARY KEY AUTO_INCREMENT,
    dept_name VARCHAR(50) NOT NULL
);

-- 2. Employees Table
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    hire_date DATE,
    dept_id INT,
    email VARCHAR(100) UNIQUE,
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

-- 3. Salaries Table (Tracks gross pay and bonuses)
CREATE TABLE Salaries (
    salary_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_id INT,
    gross_salary DECIMAL(10, 2),
    bonus DECIMAL(10, 2) DEFAULT 0.00,
    payment_date DATE,
    FOREIGN KEY (emp_id) REFERENCES Employees(emp_id)
);