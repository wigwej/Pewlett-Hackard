SELECT DISTINCT ON (employees.emp_no) 
employees.emp_no,
employees.first_name,
employees.last_name,
employees.birth_date,
dept_emp.from_date, 
dept_emp.end_date,
titles.title
FROM employees
	INNER JOIN dept_emp
	ON (dept_emp.emp_no = employees.emp_no) 
	INNER JOIN titles
	ON (employees.emp_no = titles.emp_no)
-- INTO mentorship_eligibility,
WHERE ((birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND dept_emp.end_date = ('9999-01-01'));
