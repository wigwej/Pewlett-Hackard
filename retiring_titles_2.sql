SELECT COUNT(unique_titles.title) FROM public.unique_titles
GROUP BY unique_titles.title
ORDER BY COUNT() DESC