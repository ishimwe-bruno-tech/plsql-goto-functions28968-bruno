-- Case 1: valid employee
SELECT fn_validate_payroll(1) AS case1_valid FROM dual;

-- Case 2: employee does not exist
SELECT fn_validate_payroll(999) AS case2_not_found FROM dual;

-- Case 3: bad data (negative salary), then undo
INSERT INTO employees VALUES (99, 'Test Bad', DATE '2020-01-01', -5, 10);
SELECT fn_validate_payroll(99) AS case3_bad_salary FROM dual;
ROLLBACK;
