CREATE VIEW top_countries AS
SELECT country, COUNT(*) AS total_titles
FROM netflix_titles1
GROUP BY country
ORDER BY total_titles DESC
LIMIT 10;