SELECT DISTINCT ON (retirement_titles_table.emp_no) 
retirement_titles_table.emp_no,
retirement_titles_table.first_name,
retirement_titles_table.last_name,
retirement_titles_table.title
FROM retirement_titles_table
-- INTO Unique_Titles_Table,
WHERE retirement_titles_table.to_date = ('9999-01-01')
ORDER BY retirement_titles_table.emp_no ASC, retirement_titles_table.to_date DESC;
