-- View first few records
SELECT * FROM netflix_titles1 LIMIT 10;

--  Check for duplicates
SELECT show_id, COUNT(*) 
FROM netflix_titles1
GROUP BY show_id
HAVING COUNT(*) > 1;

-- Remove duplicates (if needed)
DELETE FROM netflix_titles1
WHERE show_id IN (
  SELECT show_id
  FROM netflix_titles
  GROUP BY show_id
  HAVING COUNT(*) > 1
);

-- Handle NULL or blank values
UPDATE netflix_titles1
SET director = 'Unknown'
WHERE director IS NULL OR director = '';

UPDATE netflix_titles1
SET country = 'Unknown'
WHERE country IS NULL OR country = '';