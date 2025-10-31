-- Create countries_info table
CREATE TABLE countries_info (
    country VARCHAR(255),
    region VARCHAR(100)
);

INSERT INTO countries_info VALUES
('UNITED STATES', 'North America'),
('INDIA', 'Asia'),
('UNITED KINGDOM', 'Europe'),
('JAPAN', 'Asia'),
('CANADA', 'North America'),
('FRANCE', 'Europe'),
('BRAZIL', 'South America'),
('SPAIN', 'Europe');

-- Query: Content count by region
SELECT ci.region, COUNT(nt.show_id) AS total_titles
FROM netflix_titles1 nt
JOIN countries_info ci
ON nt.country = ci.country
GROUP BY ci.region
ORDER BY total_titles DESC;
