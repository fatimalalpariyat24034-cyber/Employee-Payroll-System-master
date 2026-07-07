USE payroll_db;

-- Query 1: Calculate Net Take-Home Pay (Gross + Bonus - 15% Tax)
-- Demonstrates: JOINs and Arithmetic Operations
SELECT 
    e.first_name, 
    e.last_name, 
    d.dept_name,
    s.gross_salary,
    s.bonus,
    (s.gross_salary + s.bonus) AS total_gross,
    (s.gross_salary + s.bonus) * 0.15 AS tax_deduction,
    (s.gross_salary + s.bonus) * 0.85 AS net_take_home
FROM Employees e
JOIN Departments d ON e.dept_id = d.dept_id
JOIN Salaries s ON e.emp_id = s.emp_id;

-- Query 2: Department-wise Salary Expenditure
-- Demonstrates: Aggregate Functions and GROUP BY
SELECT 
    d.dept_name, 
    COUNT(e.emp_id) AS total_employees,
    SUM(s.gross_salary) AS total_department_cost
FROM Departments d
JOIN Employees e ON d.dept_id = e.dept_id
JOIN Salaries s ON e.emp_id = s.emp_id
GROUP BY d.dept_name;

-- Query 3: Find Top Paid Employee in Each Department
-- Demonstrates: Subqueries or Window Functions (Interviewer favorite)
SELECT first_name, last_name, dept_name, gross_salary
FROM (
    SELECT 
        e.first_name, 
        e.last_name, 
        d.dept_name, 
        s.gross_salary,
        RANK() OVER (PARTITION BY d.dept_name ORDER BY s.gross_salary DESC) as salary_rank
    FROM Employees e
    JOIN Departments d ON e.dept_id = d.dept_id
    JOIN Salaries s ON e.emp_id = s.emp_id
) AS ranked_salaries
WHERE salary_rank = 1;