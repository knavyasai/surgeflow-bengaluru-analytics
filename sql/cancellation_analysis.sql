-- Cancellation Rate by Zone
SELECT pickup_zone,
       COUNT(*) AS total_trips,
       SUM(CASE WHEN status = 'Cancelled' THEN 1 ELSE 0 END) AS cancelled_trips,
       ROUND(
           100.0 * SUM(CASE WHEN status = 'Cancelled' THEN 1 ELSE 0 END) / COUNT(*),
           2
       ) AS cancellation_rate_percent
FROM trips
GROUP BY pickup_zone
ORDER BY cancellation_rate_percent DESC;


-- Overall Cancellation Rate
SELECT 
    COUNT(*) AS total_trips,
    SUM(CASE WHEN status = 'Cancelled' THEN 1 ELSE 0 END) AS cancelled_trips,
    ROUND(
        100.0 * SUM(CASE WHEN status = 'Cancelled' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS overall_cancellation_rate
FROM trips;
