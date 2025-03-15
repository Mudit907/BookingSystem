SELECT m.movie_id, m.title, SUM(b.total_cost) AS total_revenue
FROM Booking b
JOIN Show s ON b.show_id = s.show_id
JOIN Movie m ON s.movie_id = m.movie_id
GROUP BY m.movie_id, m.title
ORDER BY total_revenue DESC;
