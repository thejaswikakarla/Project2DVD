SELECT title, film_id, rating,release_year
FROM film
WHERE length <= 50
AND (rating = 'R' OR rating = 'PG')


