-- 1. Top 10 most frequent directors
SELECT director, COUNT(*) AS total_titles
FROM netflix_titles
WHERE director IS NOT NULL
GROUP BY director
ORDER BY total_titles DESC
LIMIT 10;

-- 2. Year-wise content addition trend
SELECT release_year, COUNT(*) AS total_titles
FROM netflix_titles
GROUP BY release_year
ORDER BY release_year;

-- 3. Most common genres on Netflix
SELECT unnest(string_to_array(listed_in, ', ')) AS genre, COUNT(*) AS total
FROM netflix_titles
GROUP BY genre
ORDER BY total DESC
LIMIT 10;

-- 4. Average number of shows per country
SELECT country, COUNT(*) AS total_titles
FROM netflix_titles
WHERE country IS NOT NULL
GROUP BY country
ORDER BY total_titles DESC
LIMIT 10;

-- 5. Count of Movies vs TV Shows
SELECT type, COUNT(*) AS count
FROM netflix_titles
GROUP BY type;

-- 6. Titles with multiple directors
SELECT show_id, title, director
FROM netflix_titles
WHERE director LIKE '%,%';

-- 7. Latest added content
SELECT *
FROM netflix_titles
WHERE date_added IS NOT NULL
ORDER BY date_added DESC
LIMIT 5;

-- 8. Movies longer than 90 minutes
SELECT COUNT(*)
FROM netflix_titles
WHERE type = 'Movie' AND duration ~ '^[0-9]+ min'
  AND CAST(split_part(duration, ' ', 1) AS INT) > 90;

-- 9. TV Shows with more than 2 seasons
SELECT title, duration
FROM netflix_titles
WHERE type = 'TV Show' AND duration ~ '[0-9]+'
  AND CAST(split_part(duration, ' ', 1) AS INT) > 2;

-- 10. Titles with the word "Love" in the description
SELECT title, description
FROM netflix_titles
WHERE description ILIKE '%love%';

-- 11. Titles where cast has more than 3 people
SELECT title, cast
FROM netflix_titles
WHERE cast IS NOT NULL AND array_length(string_to_array(cast, ', '), 1) > 3
LIMIT 10;

-- 12. Top 5 countries by TV Show count
SELECT country, COUNT(*) AS tv_shows
FROM netflix_titles
WHERE type = 'TV Show' AND country IS NOT NULL
GROUP BY country
ORDER BY tv_shows DESC
LIMIT 5;

-- 13. Count of distinct ratings
SELECT rating, COUNT(*) AS total
FROM netflix_titles
GROUP BY rating
ORDER BY total DESC;

-- 14. Title with longest description
SELECT title, LENGTH(description) AS desc_length
FROM netflix_titles
ORDER BY desc_length DESC
LIMIT 1;

-- 15. Most used words in titles (excluding stopwords)
SELECT lower(word) AS word, COUNT(*) AS frequency
FROM (
  SELECT unnest(string_to_array(title, ' ')) AS word
  FROM netflix_titles
) AS words
WHERE word NOT IN ('the', 'of', 'and', 'in', 'to', 'a', 'an', 'on')
GROUP BY word
ORDER BY frequency DESC
LIMIT 10;
