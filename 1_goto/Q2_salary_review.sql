SET SERVEROUTPUT ON
DECLARE
  v_sal employees.monthly_salary%TYPE;
BEGIN
  SELECT monthly_salary INTO v_sal FROM employees WHERE emp_id = 2;

  IF v_sal < 400000 THEN
    GOTO lbl_low;
  ELSIF v_sal < 1000000 THEN
    GOTO lbl_mid;
  ELSE
    GOTO lbl_high;
  END IF;

  <<lbl_low>>
  DBMS_OUTPUT.PUT_LINE('Salary ' || v_sal || ': eligible for 10% raise');
  GOTO lbl_end;

  <<lbl_mid>>
  DBMS_OUTPUT.PUT_LINE('Salary ' || v_sal || ': eligible for 5% raise');
  GOTO lbl_end;

  <<lbl_high>>
  DBMS_OUTPUT.PUT_LINE('Salary ' || v_sal || ': no raise this cycle');

  <<lbl_end>>
  NULL;
END;
/
