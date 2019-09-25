

-- -- 1.
-- SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
-- FROM salaries AS s
-- INNER JOIN employees AS e ON
-- e.emp_no = s.emp_no;

-- -- 2. 
-- -- SELECT * FROM employees
-- -- WHERE hire_date LIKE '1986';
--  SELECT
--  hire_date
--  FROM employees
--  WHERE extract(year from hire_date) = '1986';

SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1987-01-01';


-- 3
--  SELECT d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name, m.from_date, m.to_date
--  FROM departments AS d
--  INNER JOIN dept_manager AS m ON
--  m.dept_no = d.dept_no
--  JOIN employees AS e ON
--  e.emp_no = m.emp_no;

-- -- 4
--  SELECT e.emp_no, e.last_name, e.first_name, dp.dept_name
--  FROM employees AS e
--  INNER JOIN dept_emp AS d ON
--  e.emp_no = d.emp_no
--  INNER JOIN departments AS dp ON
--  dp.dept_no = d.dept_no;

-- -- -- 5 
--  SELECT * FROM employees
--  WHERE first_name LIKE 'Hercules'
--  AND last_name LIKE 'B%';

-- -- 6.
--  SELECT e.emp_no, e.last_name, e.first_name, dp.dept_name
--  FROM employees AS e
--  INNER JOIN dept_emp AS d ON
--  e.emp_no = d.emp_no
--  INNER JOIN departments AS dp ON
--  dp.dept_no = d.dept_no
--  WHERE dp.dept_name LIKE 'Sales';

-- -- 7. 
--  SELECT e.emp_no, e.last_name, e.first_name, dp.dept_name
--  FROM employees AS e
--  INNER JOIN dept_emp AS d ON
--  e.emp_no = d.emp_no
--  INNER JOIN departments AS dp ON
--  dp.dept_no = d.dept_no
--  WHERE dp.dept_name LIKE 'Development'
--  OR dp.dept_name LIKE 'Sales';

--  SELECT last_name, COUNT(*) AS frequency
--  FROM employees
--  GROUP BY last_name
--  ORDER BY frequency DESC;