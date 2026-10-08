-- A3: Illegal GOTO and Fix

-- ILLEGAL VERSION (jumps INTO an IF block).
-- Running it gives: PLS-00375: illegal GOTO statement
-- Commented out so this file can still run.
/*
BEGIN
  GOTO inside_if;
  IF 1 = 1 THEN
    <<inside_if>>
    DBMS_OUTPUT.PUT_LINE('hello');
  END IF;
END;
/
*/

-- FIXED VERSION (label moved outside the IF block)
SET SERVEROUTPUT ON
BEGIN
  GOTO outside_if;

  IF 1 = 1 THEN
    DBMS_OUTPUT.PUT_LINE('skipped');
  END IF;

  <<outside_if>>
  DBMS_OUTPUT.PUT_LINE('hello');
END;
/
