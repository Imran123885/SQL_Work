-- CREATE TABLE employees (
--     emp_no INT PRIMARY KEY AUTO_INCREMENT,
--     department VARCHAR(20),
--     salary INT
-- );
--  
-- INSERT INTO employees (department, salary) VALUES
-- ('engineering', 80000),
-- ('engineering', 69000),
-- ('engineering', 70000),
-- ('engineering', 103000),
-- ('engineering', 67000),
-- ('engineering', 89000),
-- ('engineering', 91000),
-- ('sales', 59000),
-- ('sales', 70000),
-- ('sales', 159000),
-- ('sales', 72000),
-- ('sales', 60000),
-- ('sales', 61000),
-- ('sales', 61000),
-- ('customer service', 38000),
-- ('customer service', 45000),
-- ('customer service', 61000),
-- ('customer service', 40000),
-- ('customer service', 31000),
-- ('customer service', 56000),
-- ('customer service', 55000);



-- SELECT emp_no, department, salary, AVG(salary) 
-- OVER(PARTITION BY department) AS avg_salary FROM employees;

-- SELECT emp_no, department, salary, AVG(salary) 
-- OVER() AS avg_salary FROM employees;

-- SELECT emp_no, department, salary, COUNT(*) 
-- OVER(PARTITION BY department) AS dept_count FROM employees;

-- SELECT emp_no, department, salary, SUM(salary) 
-- OVER(PARTITION BY department) AS dept_payroll,
-- SUM(salary) OVER() AS total_payroll FROM employees;

-- SELECT 
-- 	emp_no, 
-- 	department, 
-- 	salary, 
-- 	MIN(salary) OVER(PARTITION BY department ORDER BY salary DESC)
-- 	AS dept_payroll,
-- 	SUM(salary) OVER() AS total_payroll 
-- FROM employees;

-- SELECT 
-- 	emp_no, 
-- 	department, 
-- 	salary, 
--     RANK() OVER(PARTITION BY department ORDER BY SALARY) AS dept_salary_rank,
-- 	RANK() OVER(ORDER BY salary DESC) AS overall_salary_rank
-- FROM employees;

-- SELECT 
-- 	emp_no,
--     department,
--     salary,
--     NTILE(4) OVER(PARTITION BY department ORDER BY salary DESC) AS dept_salary_quartile,
--     NTILE(4) OVER(ORDER BY salary DESC) AS salary_quartile
-- FROM employees;

-- SELECT 
--     emp_no, 
--     department, 
--     salary,
--     FIRST_VALUE(emp_no) OVER(PARTITION BY department ORDER BY salary DESC) as highest_paid_dept,
--     FIRST_VALUE(emp_no) OVER(ORDER BY salary DESC) as highest_paid_overall
-- FROM employees;

