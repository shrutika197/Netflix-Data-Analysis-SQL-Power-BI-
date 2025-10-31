
CREATE TABLE rating_category (
    rating VARCHAR(20),
    age_group VARCHAR(50)
);

INSERT INTO rating_category VALUES
('TV-MA', 'Adults (17+)'),
('R', 'Adults (17+)'),
('TV-14', 'Teens (13-17)'),
('PG-13', 'Teens (13-17)'),
('PG', 'Kids (7-12)'),
('TV-Y', 'Kids (Below 7)'),
('TV-G', 'General Audience'),
('TV-PG', 'General Audience'),
('Unknown', 'Unknown');

-- Query: Age group distribution
SELECT rc.age_group, COUNT(nt.show_id) AS total_titles
FROM netflix_titles1 nt
JOIN rating_category rc
ON nt.rating = rc.rating
GROUP BY rc.age_group
ORDER BY total_titles DESC;
