--How Many employees with each title were born after 1965-01-01
SELECT t.title as "Titles", COUNT(t.title) as "No of Employees", e.birth_date as "Date of Birth" from employees e
INNER JOIN titles t on t.emp_no = e.emp_no
GROUP BY t.title
HAVING COUNT(e.birth_date) > '1965-01-01';

--Average Salary per title
SELECT t.title as "Titles", avg (s.salary) as "Average Salary" from salaries s
INNER JOIN titles t on t.emp_no = s.emp_no
GROUP BY t.title;

--Total salary spending on Marketing between 1990 and 1992
SELECT d.dept_name as "Department", SUM(s.salary) as "Total Salary" from departments d
INNER JOIN dept_emp de on d.dept_no = de.dept_no
INNER JOIN salaries s on de.emp_no = s.emp_no
WHERE s.from_date BETWEEN '1990-01-01' AND '1992-01-01'
GROUP BY d.dept_name
HAVING d.dept_name = 'Marketing';
