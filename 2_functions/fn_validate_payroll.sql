CREATE OR REPLACE FUNCTION fn_validate_payroll(p_emp_id NUMBER)
RETURN VARCHAR2 IS
  v_sal  employees.monthly_salary%TYPE;
  v_hire employees.hire_date%TYPE;
  v_dept employees.dept_id%TYPE;
BEGIN
  SELECT monthly_salary, hire_date, dept_id
  INTO v_sal, v_hire, v_dept
  FROM employees
  WHERE emp_id = p_emp_id;

  IF v_sal IS NULL OR v_sal <= 0 THEN
    RETURN 'INVALID: salary must be positive';
  END IF;

  IF v_hire IS NULL OR v_hire > SYSDATE THEN
    RETURN 'INVALID: bad hire date';
  END IF;

  IF fn_dept_name(v_dept) = 'Unknown' THEN
    RETURN 'INVALID: unknown department';
  END IF;

  RETURN 'VALID';
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    RETURN 'INVALID: employee not found';
END;
/
