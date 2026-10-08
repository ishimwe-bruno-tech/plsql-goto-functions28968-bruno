SELECT emp_name,
       fn_annual_salary(monthly_salary)                   AS annual_salary,
       fn_years_of_service(hire_date)                     AS years,
       fn_calculate_tax(fn_annual_salary(monthly_salary)) AS tax,
       fn_dept_name(dept_id)                              AS department
FROM employees;
