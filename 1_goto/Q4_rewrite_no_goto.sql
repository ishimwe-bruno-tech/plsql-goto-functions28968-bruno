-- A4: Number classifier rewritten WITHOUT GOTO
-- Same logic as A1, using IF / ELSIF / ELSE only.
SET SERVEROUTPUT ON
DECLARE
  v_num NUMBER := 7;
BEGIN
  IF v_num > 0 THEN
    DBMS_OUTPUT.PUT_LINE(v_num || ' is positive');
  ELSIF v_num < 0 THEN
    DBMS_OUTPUT.PUT_LINE(v_num || ' is negative');
  ELSE
    DBMS_OUTPUT.PUT_LINE(v_num || ' is zero');
  END IF;
END;
/
