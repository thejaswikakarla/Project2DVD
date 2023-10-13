SELECT film_id, title
FROM film
WHERE film_id NOT IN (
    SELECT DISTINCT film_id
    FROM Inventory
)
ORDER BY film_id asc