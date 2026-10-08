CREATE TABLE departments (
  dept_id   NUMBER PRIMARY KEY,
  dept_name VARCHAR2(50) NOT NULL
);

CREATE TABLE employees (
  emp_id         NUMBER PRIMARY KEY,
  emp_name       VARCHAR2(50),
  hire_date      DATE,
  monthly_salary NUMBER(10,2),
  dept_id        NUMBER REFERENCES departments(dept_id)
);

INSERT INTO departments VALUES (10, 'Finance');
INSERT INTO departments VALUES (20, 'IT');
INSERT INTO employees VALUES (1, 'Alice', DATE '2018-03-01', 800000, 10);
INSERT INTO employees VALUES (2, 'Bob',   DATE '2022-07-15', 350000, 20);
INSERT INTO employees VALUES (3, 'Carol', DATE '2015-01-10', 1500000, 20);
COMMIT;
