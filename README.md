# PL/SQL GOTO Statements and Functions

| | |
|---|---|
| **Student** | [Ishimwe Nzayizera Bruno] |
| **Student ID** | [28968] |
| **Course** | Database Development with PL/SQL (INSY 8311) |
| **Assignment** | Individual Assignment III |
| **Instructor** | Eric Maniraguha |

## About this project
This repository contains my solutions for Individual Assignment III. It covers PL/SQL GOTO statements, stored functions, exception handling, and calling functions from SQL queries. The programs work on two tables, `departments` and `employees`.

## Repository layout
| Folder | What it contains |
|---|---|
| `0_setup/` | `table_creation.sql` creates and fills the two tables |
| `1_goto/` | Q1 number classifier, Q2 salary review, Q3 illegal GOTO and fix, Q4 rewrite without GOTO |
| `2_functions/` | annual salary,  years of service,  tax calculator, department name,  payroll validator |
| `3_tests/` |  query with functions in SELECT, `test_functions.sql`, `test_validate_payroll.sql` |
| `screenshots/` | Output screenshots for A1 to A4, B5 and C1 |
| `docs/REFLECTION.md` | My written reflection (C2) |

## How to run
1. Run `0_setup/table_creation.sql` to create the tables and sample data.
2. Run the files in `2_functions/` so the functions exist.
3. Run the programs in `1_goto/`.
4. Run the files in `3_tests/`.
5. Compare your results with the screenshots.

## Sample data
- Departments: 10 = Finance, 20 = IT
- Employees: Alice (800,000), Bob (350,000), Carol (1,500,000)

## Expected results
- `fn_annual_salary(350000)` returns 4,200,000
- `fn_calculate_tax(9600000)` returns 2,040,000
- `fn_dept_name(999)` returns Unknown
- `fn_validate_payroll(999)` returns INVALID: employee not found

## Notes
- **Tool:** Oracle FreeSQL.
- **Assumed tax brackets:** the assignment did not list them, so I used 0% up to 1,200,000, 20% from 1,200,000 to 6,000,000, and 30% above 6,000,000.
- **Test data:** the test inserts a temporary employee with a negative salary and removes it with `ROLLBACK`.
