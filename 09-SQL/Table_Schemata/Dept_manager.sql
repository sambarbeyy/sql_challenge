CREATE TABLE dept_manager (
    dept_no VARCHAR,
    emp_no INTEGER,
    CONSTRAINT pk_dept_manager PRIMARY KEY (
       dept_no, emp_no)
);

SELECT *
FROM dept_manager