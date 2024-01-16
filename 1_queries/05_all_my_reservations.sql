SELECT reservations.id as id, properties.title as title, properties.cost_per_night, start_date, avg(property_reviews.rating)
FROM properties
JOIN reservations ON properties.id = reservations.property_id
JOIN property_reviews on property_reviews.property_id = properties.id
WHERE reservations.guest_id = 1
GROUP BY properties.title, reservations.id, properties.cost_per_night
ORDER BY reservations.start_date
LIMIT 10;