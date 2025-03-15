SELECT 
    u.user_id, 
    u.name, 
    SUM(b.total_cost) AS total_spent,
    CASE 
        WHEN SUM(b.total_cost) > 1000 THEN 'High'
        WHEN SUM(b.total_cost) BETWEEN 500 AND 1000 THEN 'Medium'
        ELSE 'Low'
    END AS spending_category
FROM Booking b
JOIN User u ON b.user_id = u.user_id
GROUP BY u.user_id, u.name
ORDER BY total_spent DESC;
