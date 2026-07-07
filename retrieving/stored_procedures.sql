-- Drop procedure if it exists to allow for easy re-running of script
DROP PROCEDURE IF EXISTS GetMonthlyPayroll;

DELIMITER //

-- Procedure to generate a payroll report for a specific payment date
CREATE PROCEDURE GetMonthlyPayroll(IN pay_date DATE)
BEGIN
    SELECT 
        e.emp_id,
        e.first_name, 
        e.last_name, 
        d.dept_name,
        (s.gross_salary + s.bonus) AS total_payout,
        s.payment_date
    FROM Employees e
    JOIN Departments d ON e.dept_id = d.dept_id
    JOIN Salaries s ON e.emp_id = s.emp_id
    WHERE s.payment_date = pay_date;
END //

DELIMITER ;

-- Example of how to call the procedure:
-- CALL GetMonthlyPayroll('2026-01-31');