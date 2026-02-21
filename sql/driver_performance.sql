-- Top 10 Drivers by Revenue
SELECT
    driver_id,
    COUNT(trip_id) AS total_trips,
    SUM(fare) AS total_earnings,
    ROUND(AVG(fare), 2) AS avg_earning_per_trip,
    ROUND(AVG(distance_km), 2) AS avg_distance
FROM trips
GROUP BY driver_id
ORDER BY total_earnings DESC
LIMIT 10;
