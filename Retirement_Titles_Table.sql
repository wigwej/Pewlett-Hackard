-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (employees.emp_no) 
employees.emp_no,
employees.first_name,
employees.last_name,
titles.title,
titles.from_date,
titles.to_date
FROM employees
LEFT JOIN titles
ON employees.emp_no = titles.emp_no
-- INTO Retirement_Titles_Table,
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
GROUP BY titles.title, employees.emp_no, titles.from_date, titles.to_date
ORDER BY employees.emp_no DESC;

