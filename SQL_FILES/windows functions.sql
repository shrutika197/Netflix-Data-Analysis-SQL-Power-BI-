SELECT 
    director,
    COUNT(*) AS total_titles,
    RANK() OVER (ORDER BY COUNT(*) DESC) AS rank_director
FROM netflix_titles1
WHERE director <> 'Unknown'
GROUP BY director
ORDER BY total_titles DESC
LIMIT 10;

SELECT 
    release_year,
    COUNT(*) AS yearly_titles,
    SUM(COUNT(*)) OVER (ORDER BY release_year) AS cumulative_titles
FROM netflix_titles1
GROUP BY release_year
ORDER BY release_year;
