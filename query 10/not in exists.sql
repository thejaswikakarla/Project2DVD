SELECT c.customer_id, c.first_name, c.last_name
FROM Customer c
WHERE NOT EXISTS (
    SELECT f.film_id
    FROM film f
    WHERE f.release_year = 2000
    EXCEPT
    SELECT i.film_id
    FROM Inventory i
    WHERE i.inventory_id IN (
        SELECT r.inventory_id
        FROM Rental r
        WHERE r.customer_id = c.customer_id
    )
);