SELECT f.country,count(c.customer_id)
FROM customer c
JOIN address a ON c.address_id = a.address_id
JOIN city i ON a.city_id = i.city_id
JOIN country f ON i.country_id = f.country_id
GROUP BY f.country
ORDER BY country asc
