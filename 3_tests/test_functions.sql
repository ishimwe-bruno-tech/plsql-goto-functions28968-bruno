SET SERVEROUTPUT ON
BEGIN
  DBMS_OUTPUT.PUT_LINE('Annual salary of 800000: ' || fn_annual_salary(800000));
  DBMS_OUTPUT.PUT_LINE('Years of service (hired 2018-03-01): ' || fn_years_of_service(DATE '2018-03-01'));
  DBMS_OUTPUT.PUT_LINE('Tax on 9600000: ' || fn_calculate_tax(9600000));
  DBMS_OUTPUT.PUT_LINE('Dept 10: ' || fn_dept_name(10));
  DBMS_OUTPUT.PUT_LINE('Dept 999: ' || fn_dept_name(999));

  -- Error case: the function raises ORA-20001, and we catch it here
  BEGIN
    DBMS_OUTPUT.PUT_LINE('Tax on -5: ' || fn_calculate_tax(-5));
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Caught error: ' || SQLERRM);
  END;
END;
/
