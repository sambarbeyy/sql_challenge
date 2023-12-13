CREATE TABLE dept_emp (
    emp_no INT,
    dept_no VARCHAR,
    CONSTRAINT "pk_dept_emp" PRIMARY KEY (
        "emp_no", "dept_no"
    )
);

SELECT *
FROM dept_emp