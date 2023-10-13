SELECT f.title, COUNT(*) AS rental_count
FROM Rental r
JOIN Inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id
GROUP BY f.title
ORDER BY rental_count DESC
LIMIT 10;