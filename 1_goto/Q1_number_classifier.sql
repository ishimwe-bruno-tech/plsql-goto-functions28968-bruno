SET SERVEROUTPUT ON
DECLARE
  v_num NUMBER := 7;
BEGIN
  IF v_num > 0 THEN
    GOTO lbl_pos;
  ELSIF v_num < 0 THEN
    GOTO lbl_neg;
  ELSE
    GOTO lbl_zero;
  END IF;

  <<lbl_pos>>
  DBMS_OUTPUT.PUT_LINE(v_num || ' is positive');
  GOTO lbl_end;

  <<lbl_neg>>
  DBMS_OUTPUT.PUT_LINE(v_num || ' is negative');
  GOTO lbl_end;

  <<lbl_zero>>
  DBMS_OUTPUT.PUT_LINE(v_num || ' is zero');

  <<lbl_end>>
  NULL;
END;
/
