SELECT reservations.id, title, start_date, cost_per_night, avg(rating) as average_rating
FROM properties
JOIN properties ON properties.id = property_reviews.property_id
JOIN property_reviews ON property_reviews.property_id = properties.id
WHERE reservations.guest_id = 1
ORDER BY start_date ASC
LIMIT 10;