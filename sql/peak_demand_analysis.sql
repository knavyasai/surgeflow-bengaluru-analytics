-- Trip Distribution by Hour
SELECT
    strftime('%H', pickup_time) AS trip_hour,
    COUNT(trip_id) AS total_trips,
    ROUND(SUM(fare), 2) AS hourly_revenue
FROM trips
GROUP BY trip_hour
ORDER BY trip_hour ASC;
