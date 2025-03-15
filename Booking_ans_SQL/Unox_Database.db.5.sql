SELECT u.user_id, u.name, COUNT(b.booking_id) AS total_bookings, SUM(b.total_cost) AS total_spent
FROM Booking b
JOIN User u ON b.user_id = u.user_id
GROUP BY u.user_id, u.name
HAVING COUNT(b.booking_id) = 5 
ORDER BY total_bookings DESC, total_spent DESC;
