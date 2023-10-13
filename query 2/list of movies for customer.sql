SELECT film.title
FROM Customer
JOIN Rental ON Customer.customer_id = Rental.customer_id
JOIN Inventory ON Rental.inventory_id = Inventory.inventory_id
JOIN film ON Inventory.film_id = film.film_id
WHERE Customer.customer_id = 76;



