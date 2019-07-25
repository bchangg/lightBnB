SELECT properties.id AS property,
       -- reservations.id AS reservation_number,
       properties.title as property_name,
       properties.cost_per_night,
       reservations.start_date,
       avg(property_reviews.rating) AS average_rating
FROM reservations
JOIN properties ON reservations.property_id = properties.id
JOIN property_reviews ON properties.id = property_reviews.property_id
WHERE reservations.guest_id = 1
GROUP BY properties.id, reservations.id
ORDER BY reservations.start_date
LIMIT 6;






-- SELECT properties.id,
--        properties.title,
--        properties.cost_per_night,
--        reservations.start_date,
--        property_reviews.rating
-- FROM users
-- JOIN properties ON users.id = properties.owner_id
-- JOIN property_reviews ON properties.id = property_reviews.property_id
-- JOIN reservations ON reservations.id = property_reviews.reservation_id
-- WHERE end_date < now()::date
-- ORDER BY reservations.start_date DESC
-- LIMIT 10;