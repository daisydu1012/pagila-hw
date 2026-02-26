/*
 * The music of Queen and Kris Kristofferson have seen an unlikely resurgence.
 * As an unintended consequence, films starting with the letters K and Q have also soared in popularity.
 * Use a JOIN to display the titles of movies starting with the letters K and Q whose language is English.
 * Use tables film and language, and order the results alphabetically by film title.
 */

SELECT f.film_id, f.title, f.language_id, l.name
FROM film f
JOIN language l ON f.language_id = l.language_id
WHERE (f.title ILIKE 'k%' OR f.title ILIKE 'q%')
  AND l.name = 'English'
ORDER BY f.title ASC;
