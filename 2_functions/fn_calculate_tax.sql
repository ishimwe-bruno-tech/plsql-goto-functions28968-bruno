CREATE OR REPLACE FUNCTION fn_calculate_tax(p_annual NUMBER)
RETURN NUMBER IS
BEGIN
  IF p_annual IS NULL OR p_annual < 0 THEN
    RAISE_APPLICATION_ERROR(-20001, 'Invalid salary');
  END IF;

  IF p_annual <= 1200000 THEN
    RETURN 0;
  ELSIF p_annual <= 6000000 THEN
    RETURN (p_annual - 1200000) * 0.20;
  ELSE
    RETURN (4800000 * 0.20) + (p_annual - 6000000) * 0.30;
  END IF;
END;
/
