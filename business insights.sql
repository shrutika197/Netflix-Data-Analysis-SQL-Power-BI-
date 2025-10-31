-- Total movies vs TV shows
SELECT type, COUNT(*) AS total_titles
FROM netflix_titles1
GROUP BY type;

-- countries with the most Netflix content
SELECT country, COUNT(*) AS total_titles
FROM netflix_titles1
GROUP BY country
ORDER BY total_titles DESC
LIMIT 5;


-- Most common ratings on Netflix
SELECT rating, COUNT(*) AS count
FROM netflix_titles1
GROUP BY rating
ORDER BY count DESC;

-- Top 10 genres on Netflix
SELECT listed_in AS genre, COUNT(*) AS total_titles
FROM netflix_titles1
GROUP BY listed_in
ORDER BY total_titles DESC
LIMIT 10;

-- Number of releases per year
SELECT release_year, COUNT(*) AS total_titles
FROM netflix_titles1
GROUP BY release_year
ORDER BY release_year;