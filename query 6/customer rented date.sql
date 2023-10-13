SELECT c.customer_id, c.first_name, c.last_name,f.title, r.rental_date
FROM Customer c
LEFT JOIN Rental r ON c.customer_id = r.customer_id
JOIN Inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id 
ORDER BY c.customer_id asc





